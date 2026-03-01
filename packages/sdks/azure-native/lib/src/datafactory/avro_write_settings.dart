// ignore_for_file: unused_element, unnecessary_cast


/// Avro write settings.
class AvroWriteSettings {
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final dynamic fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final dynamic maxRowsPerFile;
  /// Top level record name in write result, which is required in AVRO spec.
  final String? recordName;
  /// Record namespace in the write result.
  final String? recordNamespace;
  /// The write setting type.
  /// Expected value is 'AvroWriteSettings'.
  final String type;

  /// Creates a new [AvroWriteSettings].
  /// [fileNamePrefix] Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [recordName] Top level record name in write result, which is required in AVRO spec.
  /// [recordNamespace] Record namespace in the write result.
  /// [type] The write setting type.
  AvroWriteSettings({
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

  factory AvroWriteSettings.fromMap(Map<String, dynamic> map) {
    return AvroWriteSettings(
      fileNamePrefix: map['fileNamePrefix'] == null ? null : map['fileNamePrefix'],
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : map['maxRowsPerFile'],
      recordName: map['recordName'] == null ? null : map['recordName'] as String,
      recordNamespace: map['recordNamespace'] == null ? null : map['recordNamespace'] as String,
      type: map['type'] as String,
    );
  }
}

