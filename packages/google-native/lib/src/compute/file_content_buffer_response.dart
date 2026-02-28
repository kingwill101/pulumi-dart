// ignore_for_file: unused_element, unnecessary_cast

class FileContentBufferResponse {
  /// The raw content in the secure keys file.
  final String content;

  /// The file type of source file.
  final String fileType;

  /// Creates a new [FileContentBufferResponse].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferResponse({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['fileType'] = fileType;
    return map;
  }

  factory FileContentBufferResponse.fromMap(Map<String, dynamic> map) {
    return FileContentBufferResponse(
      content: map['content'] as String,
      fileType: map['fileType'] as String,
    );
  }
}
