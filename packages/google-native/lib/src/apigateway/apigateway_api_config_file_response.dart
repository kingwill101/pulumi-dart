// ignore_for_file: unused_element, unnecessary_cast

/// A lightweight description of a file.
class ApigatewayApiConfigFileResponse {
  /// The bytes that constitute the file.
  final String contents;

  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String path;

  /// Creates a new [ApigatewayApiConfigFileResponse].
  /// [contents] The bytes that constitute the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApigatewayApiConfigFileResponse({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contents'] = contents;
    map['path'] = path;
    return map;
  }

  factory ApigatewayApiConfigFileResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFileResponse(
      contents: map['contents'] as String,
      path: map['path'] as String,
    );
  }
}
