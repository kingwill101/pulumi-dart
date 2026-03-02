// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delimited text write settings.
class DelimitedTextWriteSettings {
  /// The file extension used to create the files. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> fileExtension;
  /// Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileNamePrefix;
  /// Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxRowsPerFile;
  /// Indicates whether string values should always be enclosed with quotes. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? quoteAllText;
  /// The write setting type.
  /// Expected value is 'DelimitedTextWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [DelimitedTextWriteSettings].
  /// [fileExtension] The file extension used to create the files. Type: string (or Expression with resultType string).
  /// [fileNamePrefix] Specifies the file name pattern <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file based store without partitionOptions. Type: string (or Expression with resultType string).
  /// [maxRowsPerFile] Limit the written file's row count to be smaller than or equal to the specified count. Type: integer (or Expression with resultType integer).
  /// [quoteAllText] Indicates whether string values should always be enclosed with quotes. Type: boolean (or Expression with resultType boolean).
  /// [type] The write setting type.
  DelimitedTextWriteSettings({
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

  factory DelimitedTextWriteSettings.fromMap(Map<String, dynamic> map) {
    return DelimitedTextWriteSettings(
      fileExtension: (map['fileExtension']).input(),
      fileNamePrefix: map['fileNamePrefix'] == null ? null : (map['fileNamePrefix']).input(),
      maxRowsPerFile: map['maxRowsPerFile'] == null ? null : (map['maxRowsPerFile']).input(),
      quoteAllText: map['quoteAllText'] == null ? null : (map['quoteAllText']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

