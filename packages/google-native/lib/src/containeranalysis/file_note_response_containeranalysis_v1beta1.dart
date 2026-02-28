// ignore_for_file: unused_element, unnecessary_cast

/// FileNote represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileNoteResponseContaineranalysisV1beta1 {
  /// Provide a unique identifier to match analysis information on each specific file in a package
  final List<String> checksum;

  /// This field provides information about the type of file identified
  final String fileType;

  /// Identify the full path and filename that corresponds to the file information in this section
  final String title;

  /// Creates a new [FileNoteResponseContaineranalysisV1beta1].
  /// [checksum] Provide a unique identifier to match analysis information on each specific file in a package
  /// [fileType] This field provides information about the type of file identified
  /// [title] Identify the full path and filename that corresponds to the file information in this section
  FileNoteResponseContaineranalysisV1beta1({
    required this.checksum,
    required this.fileType,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checksum'] = checksum;
    map['fileType'] = fileType;
    map['title'] = title;
    return map;
  }

  factory FileNoteResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return FileNoteResponseContaineranalysisV1beta1(
      checksum: (map['checksum'] as List).cast<String>(),
      fileType: map['fileType'] as String,
      title: map['title'] as String,
    );
  }
}
