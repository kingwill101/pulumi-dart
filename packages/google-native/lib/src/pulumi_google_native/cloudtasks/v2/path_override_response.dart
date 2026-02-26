// ignore_for_file: unused_element, unnecessary_cast

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideResponse {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String path;

  PathOverrideResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PathOverrideResponse.fromMap(Map<String, dynamic> map) {
    return PathOverrideResponse(
      path: map['path'] as String,
    );
  }
}
