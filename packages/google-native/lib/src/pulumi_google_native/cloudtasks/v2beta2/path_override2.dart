// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverride2 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String? path;

  PathOverride2({
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

  factory PathOverride2.fromMap(Map<String, dynamic> map) {
    return PathOverride2(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
