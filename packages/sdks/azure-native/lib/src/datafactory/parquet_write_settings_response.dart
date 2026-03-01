// ignore_for_file: unused_element, unnecessary_cast


/// Parquet write settings.
class ParquetWriteSettingsResponse {
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final dynamic fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final dynamic maxRowsPerFile;
  /// The write setting type.
  /// Expected value is 'ParquetWriteSettings'.
  final String type;

  /// Creates a new [ParquetWriteSettingsResponse].
  /// [fileNamePrefix] Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [type] The write setting type.
  ParquetWriteSettingsResponse({
    this.fileNamePrefix,
    this.maxRowsPerFile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileNamePrefix': ?fileNamePrefix,
      'maxRowsPerFile': ?maxRowsPerFile,
      'type': type,
    };
  }

  factory ParquetWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetWriteSettingsResponse(
      fileNamePrefix: map['fileNamePrefix'] == null ? null : map['fileNamePrefix'],
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : map['maxRowsPerFile'],
      type: map['type'] as String,
    );
  }
}

