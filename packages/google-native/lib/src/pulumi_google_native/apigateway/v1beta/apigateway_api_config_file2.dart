// ignore_for_file: unused_element, unnecessary_cast

/// A lightweight description of a file.
class ApigatewayApiConfigFile2 {
  /// The bytes that constitute the file.
  final String? contents;

  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String? path;

  ApigatewayApiConfigFile2({
    this.contents,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentsValue = contents;
    if (contentsValue != null) {
      map['contents'] = contentsValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory ApigatewayApiConfigFile2.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFile2(
      contents: map['contents'] == null ? null : map['contents'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
