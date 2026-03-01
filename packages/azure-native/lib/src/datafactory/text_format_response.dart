// ignore_for_file: unused_element, unnecessary_cast


/// The data stored in text format.
class TextFormatResponse {
  /// The column delimiter. Type: string (or Expression with resultType string).
  final dynamic columnDelimiter;
  /// Deserializer. Type: string (or Expression with resultType string).
  final dynamic deserializer;
  /// The code page name of the preferred encoding. If miss, the default value is ΓÇ£utf-8ΓÇ¥, unless BOM denotes another Unicode encoding. Refer to the ΓÇ£NameΓÇ¥ column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  final dynamic encodingName;
  /// The escape character. Type: string (or Expression with resultType string).
  final dynamic escapeChar;
  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic firstRowAsHeader;
  /// The null value string. Type: string (or Expression with resultType string).
  final dynamic nullValue;
  /// The quote character. Type: string (or Expression with resultType string).
  final dynamic quoteChar;
  /// The row delimiter. Type: string (or Expression with resultType string).
  final dynamic rowDelimiter;
  /// Serializer. Type: string (or Expression with resultType string).
  final dynamic serializer;
  /// The number of lines/rows to be skipped when parsing text files. The default value is 0. Type: integer (or Expression with resultType integer).
  final dynamic skipLineCount;
  /// Treat empty column values in the text file as null. The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic treatEmptyAsNull;
  /// Type of dataset storage format.
  /// Expected value is 'TextFormat'.
  final String type;

  /// Creates a new [TextFormatResponse].
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
  TextFormatResponse({
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

  factory TextFormatResponse.fromMap(Map<String, dynamic> map) {
    return TextFormatResponse(
      columnDelimiter: map['columnDelimiter'] == null ? null : map['columnDelimiter'],
      deserializer: map['deserializer'] == null ? null : map['deserializer'],
      encodingName: map['encodingName'] == null ? null : map['encodingName'],
      escapeChar: map['escapeChar'] == null ? null : map['escapeChar'],
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : map['firstRowAsHeader'],
      nullValue: map['nullValue'] == null ? null : map['nullValue'],
      quoteChar: map['quoteChar'] == null ? null : map['quoteChar'],
      rowDelimiter: map['rowDelimiter'] == null ? null : map['rowDelimiter'],
      serializer: map['serializer'] == null ? null : map['serializer'],
      skipLineCount: map['skipLineCount'] == null ? null : map['skipLineCount'],
      treatEmptyAsNull: map['treatEmptyAsNull'] == null ? null : map['treatEmptyAsNull'],
      type: map['type'] as String,
    );
  }
}

