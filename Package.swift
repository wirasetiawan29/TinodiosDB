// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TinodiosDB",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TinodiosDB",
            targets: ["TinodiosDB"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/jrendel/SwiftKeychainWrapper", exact: "4.0.1"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", exact: "0.13.0"),
        .package(url: "https://github.com/wirasetiawan29/TinodeSDK", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TinodiosDB",
            dependencies: [
                .product(name: "TinodeSDK", package: "TinodeSDK"),
                .product(name: "SwiftKeychainWrapper", package: "SwiftKeychainWrapper"),
               .product(name: "SQLite.swift", package: "SQLite.swift"),
            ]),
        .testTarget(
            name: "TinodiosDBTests",
            dependencies: ["TinodiosDB"]),
    ]
)
