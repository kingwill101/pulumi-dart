// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Avro write settings.
class AvroWriteSettingsResponse {
  /// Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
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
  /// [fileNamePrefix] Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [recordName] Top level record name in write result, which is required in AVRO spec.
  /// [recordNamespace] Record namespace in the write result.
  /// [type] The write setting type.
  const AvroWriteSettingsResponse({
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
      fileNamePrefix: (() { final guardedValue = map['fileNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxRowsPerFile: (() { final guardedValue = map['maxRowsPerFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      recordName: (() { final guardedValue = map['recordName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordNamespace: (() { final guardedValue = map['recordNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
