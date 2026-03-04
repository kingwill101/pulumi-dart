// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delimited text write settings.
class DelimitedTextWriteSettingsResponse {
  /// The file extension used to create the files. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> fileExtension;

  /// Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;

  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;

  /// Indicates whether string values should always be enclosed with quotes. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? quoteAllText;

  /// The write setting type.
  /// Expected value is 'DelimitedTextWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [DelimitedTextWriteSettingsResponse].
  /// [fileExtension] The file extension used to create the files. Type: string (or Expression with resultType string).
  /// [fileNamePrefix] Specifies the file name pattern &lt;fileNamePrefix&gt;_&lt;fileIndex&gt;.&lt;fileExtension&gt; when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [quoteAllText] Indicates whether string values should always be enclosed with quotes. Type: boolean (or Expression with resultType boolean).
  /// [type] The write setting type.
  DelimitedTextWriteSettingsResponse({
    required this.fileExtension,
    this.fileNamePrefix,
    this.maxRowsPerFile,
    this.quoteAllText,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileExtension': fileExtension,
      'fileNamePrefix': ?fileNamePrefix,
      'maxRowsPerFile': ?maxRowsPerFile,
      'quoteAllText': ?quoteAllText,
      'type': type,
    };
  }

  factory DelimitedTextWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DelimitedTextWriteSettingsResponse(
      fileExtension: pulumi.Input.fromValue(map['fileExtension']),
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
      quoteAllText: (() {
        final guardedValue = map['quoteAllText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
