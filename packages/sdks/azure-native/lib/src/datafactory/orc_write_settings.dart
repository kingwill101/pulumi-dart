// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Orc write settings.
class OrcWriteSettings {
  /// Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;

  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;

  /// The write setting type.
  /// Expected value is 'OrcWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [OrcWriteSettings].
  /// [fileNamePrefix] Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [type] The write setting type.
  OrcWriteSettings({
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

  factory OrcWriteSettings.fromMap(Map<String, dynamic> map) {
    return OrcWriteSettings(
      fileNamePrefix: (() {
        final guardedValue = map['fileNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxRowsPerFile: (() {
        final guardedValue = map['maxRowsPerFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
