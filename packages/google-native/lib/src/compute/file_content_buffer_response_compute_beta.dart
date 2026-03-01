// ignore_for_file: unused_element, unnecessary_cast

class FileContentBufferResponseComputeBeta {
  /// The raw content in the secure keys file.
  final String content;

  /// The file type of source file.
  final String fileType;

  /// Creates a new [FileContentBufferResponseComputeBeta].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferResponseComputeBeta({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'fileType': fileType};
  }

  factory FileContentBufferResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FileContentBufferResponseComputeBeta(
      content: map['content'] as String,
      fileType: map['fileType'] as String,
    );
  }
}
