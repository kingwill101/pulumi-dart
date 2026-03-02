// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parquet write settings.
class ParquetWriteSettingsResponse {
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;
  /// The write setting type.
  /// Expected value is 'ParquetWriteSettings'.
  final pulumi.Input<String> type;

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
      fileNamePrefix: map['fileNamePrefix'] == null ? null : (map['fileNamePrefix']).input(),
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : (map['maxRowsPerFile']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

