// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverride3 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String? path;

  PathOverride3({
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

  factory PathOverride3.fromMap(Map<String, dynamic> map) {
    return PathOverride3(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
