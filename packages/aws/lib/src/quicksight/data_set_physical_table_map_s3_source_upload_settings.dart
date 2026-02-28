// ignore_for_file: unused_element, unnecessary_cast

class DataSetPhysicalTableMapS3SourceUploadSettings {
  /// Whether the file has a header row, or the files each have a header row.
  final bool? containsHeader;

  /// Delimiter between values in the file.
  final String? delimiter;

  /// File format. Valid values are `CSV`, `TSV`, `CLF`, `ELF`, `XLSX`, and `JSON`.
  final String? format;

  /// A row number to start reading data from.
  final int? startFromRow;

  /// Text qualifier. Valid values are `DOUBLE_QUOTE` and `SINGLE_QUOTE`.
  final String? textQualifier;

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
    final map = <String, dynamic>{};
    final containsHeaderValue = containsHeader;
    if (containsHeaderValue != null) {
      map['containsHeader'] = containsHeaderValue;
    }
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    final startFromRowValue = startFromRow;
    if (startFromRowValue != null) {
      map['startFromRow'] = startFromRowValue;
    }
    final textQualifierValue = textQualifier;
    if (textQualifierValue != null) {
      map['textQualifier'] = textQualifierValue;
    }
    return map;
  }

  factory DataSetPhysicalTableMapS3SourceUploadSettings.fromMap(
      Map<String, dynamic> map) {
    return DataSetPhysicalTableMapS3SourceUploadSettings(
      containsHeader:
          map['containsHeader'] == null ? null : map['containsHeader'] as bool,
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      startFromRow:
          map['startFromRow'] == null ? null : map['startFromRow'] as int,
      textQualifier:
          map['textQualifier'] == null ? null : map['textQualifier'] as String,
    );
  }
}
