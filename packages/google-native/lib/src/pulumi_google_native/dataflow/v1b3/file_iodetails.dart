// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a File connector used by the job.
class FileIODetails {
  /// File Pattern used to access files by the connector.
  final String? filePattern;

  FileIODetails({
    this.filePattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filePatternValue = filePattern;
    if (filePatternValue != null) {
      map['filePattern'] = filePatternValue;
    }
    return map;
  }

  factory FileIODetails.fromMap(Map<String, dynamic> map) {
    return FileIODetails(
      filePattern:
          map['filePattern'] == null ? null : map['filePattern'] as String,
    );
  }
}
