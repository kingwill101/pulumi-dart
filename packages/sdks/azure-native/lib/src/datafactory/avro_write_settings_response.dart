// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Avro write settings.
class AvroWriteSettingsResponse {
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;
  /// Top level record name in write result, which is required in AVRO spec.
  final pulumi.Input<String>? recordName;
  /// Record namespace in the write result.
  final pulumi.Input<String>? recordNamespace;
  /// The write setting type.
  /// Expected value is 'AvroWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [AvroWriteSettingsResponse].
  /// [fileNamePrefix] Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [recordName] Top level record name in write result, which is required in AVRO spec.
  /// [recordNamespace] Record namespace in the write result.
  /// [type] The write setting type.
  AvroWriteSettingsResponse({
    this.fileNamePrefix,
    this.maxRowsPerFile,
    this.recordName,
    this.recordNamespace,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileNamePrefix': ?fileNamePrefix,
      'maxRowsPerFile': ?maxRowsPerFile,
      'recordName': ?recordName,
      'recordNamespace': ?recordNamespace,
      'type': type,
    };
  }

  factory AvroWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AvroWriteSettingsResponse(
      fileNamePrefix: map['fileNamePrefix'] == null ? null : (map['fileNamePrefix']!).input(),
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : (map['maxRowsPerFile']!).input(),
      recordName: map['recordName'] == null ? null : (map['recordName']! as String).input(),
      recordNamespace: map['recordNamespace'] == null ? null : (map['recordNamespace']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

