// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data stored in text format.
class TextFormat {
  /// The column delimiter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? columnDelimiter;
  /// Deserializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? deserializer;
  /// The code page name of the preferred encoding. If miss, the default value is ΓÇ£utf-8ΓÇ¥, unless BOM denotes another Unicode encoding. Refer to the ΓÇ£NameΓÇ¥ column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? encodingName;
  /// The escape character. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? escapeChar;
  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? firstRowAsHeader;
  /// The null value string. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? nullValue;
  /// The quote character. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? quoteChar;
  /// The row delimiter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? rowDelimiter;
  /// Serializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serializer;
  /// The number of lines/rows to be skipped when parsing text files. The default value is 0. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? skipLineCount;
  /// Treat empty column values in the text file as null. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? treatEmptyAsNull;
  /// Type of dataset storage format.
  /// Expected value is 'TextFormat'.
  final pulumi.Input<String> type;

  /// Creates a new [TextFormat].
  /// [columnDelimiter] The column delimiter. Type: string (or Expression with resultType string).
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [encodingName] The code page name of the preferred encoding. If miss, the default value is ΓÇ£utf-8ΓÇ¥, unless BOM denotes another Unicode encoding. Refer to the ΓÇ£NameΓÇ¥ column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  /// [escapeChar] The escape character. Type: string (or Expression with resultType string).
  /// [firstRowAsHeader] When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [nullValue] The null value string. Type: string (or Expression with resultType string).
  /// [quoteChar] The quote character. Type: string (or Expression with resultType string).
  /// [rowDelimiter] The row delimiter. Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [skipLineCount] The number of lines/rows to be skipped when parsing text files. The default value is 0. Type: integer (or Expression with resultType integer).
  /// [treatEmptyAsNull] Treat empty column values in the text file as null. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [type] Type of dataset storage format.
  TextFormat({
    this.columnDelimiter,
    this.deserializer,
    this.encodingName,
    this.escapeChar,
    this.firstRowAsHeader,
    this.nullValue,
    this.quoteChar,
    this.rowDelimiter,
    this.serializer,
    this.skipLineCount,
    this.treatEmptyAsNull,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnDelimiter': ?columnDelimiter,
      'deserializer': ?deserializer,
      'encodingName': ?encodingName,
      'escapeChar': ?escapeChar,
      'firstRowAsHeader': ?firstRowAsHeader,
      'nullValue': ?nullValue,
      'quoteChar': ?quoteChar,
      'rowDelimiter': ?rowDelimiter,
      'serializer': ?serializer,
      'skipLineCount': ?skipLineCount,
      'treatEmptyAsNull': ?treatEmptyAsNull,
      'type': type,
    };
  }

  factory TextFormat.fromMap(Map<String, dynamic> map) {
    return TextFormat(
      columnDelimiter: map['columnDelimiter'] == null ? null : (map['columnDelimiter']!).input(),
      deserializer: map['deserializer'] == null ? null : (map['deserializer']!).input(),
      encodingName: map['encodingName'] == null ? null : (map['encodingName']!).input(),
      escapeChar: map['escapeChar'] == null ? null : (map['escapeChar']!).input(),
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : (map['firstRowAsHeader']!).input(),
      nullValue: map['nullValue'] == null ? null : (map['nullValue']!).input(),
      quoteChar: map['quoteChar'] == null ? null : (map['quoteChar']!).input(),
      rowDelimiter: map['rowDelimiter'] == null ? null : (map['rowDelimiter']!).input(),
      serializer: map['serializer'] == null ? null : (map['serializer']!).input(),
      skipLineCount: map['skipLineCount'] == null ? null : (map['skipLineCount']!).input(),
      treatEmptyAsNull: map['treatEmptyAsNull'] == null ? null : (map['treatEmptyAsNull']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

