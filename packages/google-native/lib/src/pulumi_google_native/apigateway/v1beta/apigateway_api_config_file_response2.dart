// ignore_for_file: unused_element, unnecessary_cast

/// A lightweight description of a file.
class ApigatewayApiConfigFileResponse2 {
  /// The bytes that constitute the file.
  final String contents;

  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String path;

  ApigatewayApiConfigFileResponse2({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contents'] = contents;
    map['path'] = path;
    return map;
  }

  factory ApigatewayApiConfigFileResponse2.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFileResponse2(
      contents: map['contents'] as String,
      path: map['path'] as String,
    );
  }
}
