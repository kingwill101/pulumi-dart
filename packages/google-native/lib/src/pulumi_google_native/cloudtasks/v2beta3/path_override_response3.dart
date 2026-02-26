// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideResponse3 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String path;

  PathOverrideResponse3({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PathOverrideResponse3.fromMap(Map<String, dynamic> map) {
    return PathOverrideResponse3(
      path: map['path'] as String,
    );
  }
}
