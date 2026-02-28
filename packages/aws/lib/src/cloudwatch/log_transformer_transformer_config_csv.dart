// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigCsv {
  /// Specifies the names to use for the columns in the transformed log event. If not specified, default column names (`[column_1, column_2 ...]`) are used.
  final List<String>? columns;

  /// Specifies the character used to separate each column in the original comma-separated value log event. Defaults to the comma `,` character.
  final String? delimiter;

  /// Specifies the character used as a text qualifier for a single column of data. Defaults to the double quotation mark `"` character.
  final String? quoteCharacter;

  /// Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigCsv].
  /// [columns] Specifies the names to use for the columns in the transformed log event. If not specified, default column names (`[column_1, column_2 ...]`) are used.
  /// [delimiter] Specifies the character used to separate each column in the original comma-separated value log event. Defaults to the comma `,` character.
  /// [quoteCharacter] Specifies the character used as a text qualifier for a single column of data. Defaults to the double quotation mark `"` character.
  /// [source] Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigCsv({
    this.columns,
    this.delimiter,
    this.quoteCharacter,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = columnsValue;
    }
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final quoteCharacterValue = quoteCharacter;
    if (quoteCharacterValue != null) {
      map['quoteCharacter'] = quoteCharacterValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigCsv.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigCsv(
      columns: map['columns'] == null
          ? null
          : (map['columns'] as List).cast<String>(),
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      quoteCharacter: map['quoteCharacter'] == null
          ? null
          : map['quoteCharacter'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
