// ignore_for_file: unused_element, unnecessary_cast

/// A lightweight description of a file.
class ApigatewayApiConfigFileApigatewayV1beta {
  /// The bytes that constitute the file.
  final String? contents;

  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String? path;

  /// Creates a new [ApigatewayApiConfigFileApigatewayV1beta].
  /// [contents] The bytes that constitute the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApigatewayApiConfigFileApigatewayV1beta({this.contents, this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contents': ?contents, 'path': ?path};
  }

  factory ApigatewayApiConfigFileApigatewayV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApigatewayApiConfigFileApigatewayV1beta(
      contents: map['contents'] == null ? null : map['contents'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
