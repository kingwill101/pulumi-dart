// ignore_for_file: unused_element, unnecessary_cast

class ApiConfigGrpcServiceSource {
  /// Base64 encoded content of the file.
  final String contents;

  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String path;

  ApiConfigGrpcServiceSource({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contents'] = contents;
    map['path'] = path;
    return map;
  }

  factory ApiConfigGrpcServiceSource.fromMap(Map<String, dynamic> map) {
    return ApiConfigGrpcServiceSource(
      contents: map['contents'] as String,
      path: map['path'] as String,
    );
  }
}
