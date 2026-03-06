// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCacheBehavior {
  /// Cache behavior for the specified path. Valid values: `cache`, `dont-cache`.
  final pulumi.Input<String> behavior;
  /// Path to a directory or file to cache, or not cache. Use an asterisk symbol to specify wildcard directories (`path/to/assets/*`), and file types (`*.html`, `*.jpg`, `*.js`). Directories and file paths are case-sensitive.
  final pulumi.Input<String> path;

  /// Creates a new [DistributionCacheBehavior].
  /// [behavior] Cache behavior for the specified path. Valid values: `cache`, `dont-cache`.
  /// [path] Path to a directory or file to cache, or not cache. Use an asterisk symbol to specify wildcard directories (`path/to/assets/*`), and file types (`*.html`, `*.jpg`, `*.js`). Directories and file paths are case-sensitive.
  const DistributionCacheBehavior({
    required this.behavior,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'path': path,
    };
  }

  factory DistributionCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionCacheBehavior(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

