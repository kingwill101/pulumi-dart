// ignore_for_file: unused_element, unnecessary_cast

import 'file_note_file_type_containeranalysis_v1beta1.dart';

/// FileNote represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileNoteContaineranalysisV1beta1 {
  /// Provide a unique identifier to match analysis information on each specific file in a package
  final List<String>? checksum;

  /// This field provides information about the type of file identified
  final FileNoteFileTypeContaineranalysisV1beta1? fileType;

  /// Identify the full path and filename that corresponds to the file information in this section
  final String? title;

  FileNoteContaineranalysisV1beta1({
    this.checksum,
    this.fileType,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checksumValue = checksum;
    if (checksumValue != null) {
      map['checksum'] = checksumValue;
    }
    final fileTypeValue = fileType;
    if (fileTypeValue != null) {
      map['fileType'] = fileTypeValue.value;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory FileNoteContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return FileNoteContaineranalysisV1beta1(
      checksum: map['checksum'] == null
          ? null
          : (map['checksum'] as List).cast<String>(),
      fileType: map['fileType'] == null
          ? null
          : FileNoteFileTypeContaineranalysisV1beta1.fromValue(
              map['fileType'] as String),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
