// ignore_for_file: unused_element, unnecessary_cast

import 'file_content_buffer_file_type_compute_beta.dart';

class FileContentBufferComputeBeta {
  /// The raw content in the secure keys file.
  final String? content;

  /// The file type of source file.
  final FileContentBufferFileTypeComputeBeta? fileType;

  /// Creates a new [FileContentBufferComputeBeta].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferComputeBeta({
    this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final fileTypeValue = fileType;
    if (fileTypeValue != null) {
      map['fileType'] = fileTypeValue.value;
    }
    return map;
  }

  factory FileContentBufferComputeBeta.fromMap(Map<String, dynamic> map) {
    return FileContentBufferComputeBeta(
      content: map['content'] == null ? null : map['content'] as String,
      fileType: map['fileType'] == null
          ? null
          : FileContentBufferFileTypeComputeBeta.fromValue(
              map['fileType'] as String),
    );
  }
}
