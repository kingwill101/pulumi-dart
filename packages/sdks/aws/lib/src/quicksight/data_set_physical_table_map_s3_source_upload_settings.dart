// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetPhysicalTableMapS3SourceUploadSettings {
  /// Whether the file has a header row, or the files each have a header row.
  final pulumi.Input<bool>? containsHeader;
  /// Delimiter between values in the file.
  final pulumi.Input<String>? delimiter;
  /// File format. Valid values are `CSV`, `TSV`, `CLF`, `ELF`, `XLSX`, and `JSON`.
  final pulumi.Input<String>? format;
  /// A row number to start reading data from.
  final pulumi.Input<int>? startFromRow;
  /// Text qualifier. Valid values are `DOUBLE_QUOTE` and `SINGLE_QUOTE`.
  final pulumi.Input<String>? textQualifier;

  /// Creates a new [DataSetPhysicalTableMapS3SourceUploadSettings].
  /// [containsHeader] Whether the file has a header row, or the files each have a header row.
  /// [delimiter] Delimiter between values in the file.
  /// [format] File format. Valid values are `CSV`, `TSV`, `CLF`, `ELF`, `XLSX`, and `JSON`.
  /// [startFromRow] A row number to start reading data from.
  /// [textQualifier] Text qualifier. Valid values are `DOUBLE_QUOTE` and `SINGLE_QUOTE`.
  DataSetPhysicalTableMapS3SourceUploadSettings({
    this.containsHeader,
    this.delimiter,
    this.format,
    this.startFromRow,
    this.textQualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containsHeader': ?containsHeader,
      'delimiter': ?delimiter,
      'format': ?format,
      'startFromRow': ?startFromRow,
      'textQualifier': ?textQualifier,
    };
  }

  factory DataSetPhysicalTableMapS3SourceUploadSettings.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapS3SourceUploadSettings(
      containsHeader: map['containsHeader'] == null ? null : ((map['containsHeader'] as bool).input()).input(),
      delimiter: map['delimiter'] == null ? null : ((map['delimiter'] as String).input()).input(),
      format: map['format'] == null ? null : ((map['format'] as String).input()).input(),
      startFromRow: map['startFromRow'] == null ? null : ((map['startFromRow'] as int).input()).input(),
      textQualifier: map['textQualifier'] == null ? null : ((map['textQualifier'] as String).input()).input(),
    );
  }
}

