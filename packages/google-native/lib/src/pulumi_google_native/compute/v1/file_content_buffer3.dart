// ignore_for_file: unused_element, unnecessary_cast

import 'file_content_buffer_file_type3.dart';

class FileContentBuffer3 {
  /// The raw content in the secure keys file.
  final String? content;

  /// The file type of source file.
  final FileContentBufferFileType3? fileType;

  FileContentBuffer3({
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

  factory FileContentBuffer3.fromMap(Map<String, dynamic> map) {
    return FileContentBuffer3(
      content: map['content'] == null ? null : map['content'] as String,
      fileType: map['fileType'] == null
          ? null
          : FileContentBufferFileType3.fromValue(map['fileType'] as String),
    );
  }
}
