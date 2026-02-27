// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideResponseCloudtasksV2beta2 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String path;

  PathOverrideResponseCloudtasksV2beta2({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PathOverrideResponseCloudtasksV2beta2.fromMap(
      Map<String, dynamic> map) {
    return PathOverrideResponseCloudtasksV2beta2(
      path: map['path'] as String,
    );
  }
}
