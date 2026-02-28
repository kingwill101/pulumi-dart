// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverride {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String? path;

  /// Creates a new [PathOverride].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  PathOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory PathOverride.fromMap(Map<String, dynamic> map) {
    return PathOverride(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
