// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Orc write settings.
class OrcWriteSettingsResponse {
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;
  /// The write setting type.
  /// Expected value is 'OrcWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [OrcWriteSettingsResponse].
  /// [fileNamePrefix] Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [type] The write setting type.
  OrcWriteSettingsResponse({
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

  factory OrcWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OrcWriteSettingsResponse(
      fileNamePrefix: map['fileNamePrefix'] == null ? null : (map['fileNamePrefix']).input(),
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : (map['maxRowsPerFile']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

