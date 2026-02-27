// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideCloudtasksV2beta3 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String? path;

  PathOverrideCloudtasksV2beta3({
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

  factory PathOverrideCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return PathOverrideCloudtasksV2beta3(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
