// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigCsv {
  /// Specifies the names to use for the columns in the transformed log event. If not specified, default column names (`[column_1, column2 ...]`) are used.
  final pulumi.Input<List<String>?>? columns;
  /// Specifies the character used to separate each column in the original comma-separated value log event. Defaults to the comma `,` character.
  final pulumi.Input<String?>? delimiter;
  /// Specifies the character used as a text qualifier for a single column of data. Defaults to the double quotation mark `"` character.
  final pulumi.Input<String?>? quoteCharacter;
  /// Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  final pulumi.Input<String?>? source;

  /// Creates a new [LogTransformerTransformerConfigCsv].
  /// [columns] Specifies the names to use for the columns in the transformed log event. If not specified, default column names (`[column_1, column2 ...]`) are used.
  /// [delimiter] Specifies the character used to separate each column in the original comma-separated value log event. Defaults to the comma `,` character.
  /// [quoteCharacter] Specifies the character used as a text qualifier for a single column of data. Defaults to the double quotation mark `"` character.
  /// [source] Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  const LogTransformerTransformerConfigCsv({
    this.columns,
    this.delimiter,
    this.quoteCharacter,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'delimiter': ?delimiter,
      'quoteCharacter': ?quoteCharacter,
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigCsv.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigCsv(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quoteCharacter: (() { final guardedValue = map['quoteCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
