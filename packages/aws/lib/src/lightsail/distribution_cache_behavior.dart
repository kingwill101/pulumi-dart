// ignore_for_file: unused_element, unnecessary_cast

class DistributionCacheBehavior {
  /// Cache behavior for the specified path. Valid values: `cache`, `dont-cache`.
  final String behavior;

  /// Path to a directory or file to cache, or not cache. Use an asterisk symbol to specify wildcard directories (`path/to/assets/*`), and file types (`*.html`, `*.jpg`, `*.js`). Directories and file paths are case-sensitive.
  final String path;

  /// Creates a new [DistributionCacheBehavior].
  /// [behavior] Cache behavior for the specified path. Valid values: `cache`, `dont-cache`.
  /// [path] Path to a directory or file to cache, or not cache. Use an asterisk symbol to specify wildcard directories (`path/to/assets/*`), and file types (`*.html`, `*.jpg`, `*.js`). Directories and file paths are case-sensitive.
  DistributionCacheBehavior({
    required this.behavior,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    map['path'] = path;
    return map;
  }

  factory DistributionCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionCacheBehavior(
      behavior: map['behavior'] as String,
      path: map['path'] as String,
    );
  }
}
