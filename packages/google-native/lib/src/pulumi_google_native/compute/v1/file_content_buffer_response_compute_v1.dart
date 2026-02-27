// ignore_for_file: unused_element, unnecessary_cast

class FileContentBufferResponseComputeV1 {
  /// The raw content in the secure keys file.
  final String content;

  /// The file type of source file.
  final String fileType;

  FileContentBufferResponseComputeV1({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['fileType'] = fileType;
    return map;
  }

  factory FileContentBufferResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FileContentBufferResponseComputeV1(
      content: map['content'] as String,
      fileType: map['fileType'] as String,
    );
  }
}
