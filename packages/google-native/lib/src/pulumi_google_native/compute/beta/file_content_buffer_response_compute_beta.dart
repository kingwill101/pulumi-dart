// ignore_for_file: unused_element, unnecessary_cast

class FileContentBufferResponseComputeBeta {
  /// The raw content in the secure keys file.
  final String content;

  /// The file type of source file.
  final String fileType;

  FileContentBufferResponseComputeBeta({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['fileType'] = fileType;
    return map;
  }

  factory FileContentBufferResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FileContentBufferResponseComputeBeta(
      content: map['content'] as String,
      fileType: map['fileType'] as String,
    );
  }
}
