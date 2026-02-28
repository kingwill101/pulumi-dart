// ignore_for_file: unused_element, unnecessary_cast

class ClassifierCsvClassifier {
  /// Enables the processing of files that contain only one column.
  final bool? allowSingleColumn;

  /// Indicates whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
  final String? containsHeader;

  /// Enables the custom datatype to be configured.
  final bool? customDatatypeConfigured;

  /// A list of supported custom datatypes. Valid values are `BINARY`, `BOOLEAN`, `DATE`, `DECIMAL`, `DOUBLE`, `FLOAT`, `INT`, `LONG`, `SHORT`, `STRING`, `TIMESTAMP`.
  final List<String>? customDatatypes;

  /// The delimiter used in the CSV to separate columns.
  final String? delimiter;

  /// Specifies whether to trim column values.
  final bool? disableValueTrimming;

  /// A list of strings representing column names.
  final List<String>? headers;

  /// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
  final String? quoteSymbol;

  /// The SerDe for processing CSV. Valid values are `OpenCSVSerDe`, `LazySimpleSerDe`, `None`.
  final String? serde;

  /// Creates a new [ClassifierCsvClassifier].
  /// [allowSingleColumn] Enables the processing of files that contain only one column.
  /// [containsHeader] Indicates whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
  /// [customDatatypeConfigured] Enables the custom datatype to be configured.
  /// [customDatatypes] A list of supported custom datatypes. Valid values are `BINARY`, `BOOLEAN`, `DATE`, `DECIMAL`, `DOUBLE`, `FLOAT`, `INT`, `LONG`, `SHORT`, `STRING`, `TIMESTAMP`.
  /// [delimiter] The delimiter used in the CSV to separate columns.
  /// [disableValueTrimming] Specifies whether to trim column values.
  /// [headers] A list of strings representing column names.
  /// [quoteSymbol] A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
  /// [serde] The SerDe for processing CSV. Valid values are `OpenCSVSerDe`, `LazySimpleSerDe`, `None`.
  ClassifierCsvClassifier({
    this.allowSingleColumn,
    this.containsHeader,
    this.customDatatypeConfigured,
    this.customDatatypes,
    this.delimiter,
    this.disableValueTrimming,
    this.headers,
    this.quoteSymbol,
    this.serde,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowSingleColumnValue = allowSingleColumn;
    if (allowSingleColumnValue != null) {
      map['allowSingleColumn'] = allowSingleColumnValue;
    }
    final containsHeaderValue = containsHeader;
    if (containsHeaderValue != null) {
      map['containsHeader'] = containsHeaderValue;
    }
    final customDatatypeConfiguredValue = customDatatypeConfigured;
    if (customDatatypeConfiguredValue != null) {
      map['customDatatypeConfigured'] = customDatatypeConfiguredValue;
    }
    final customDatatypesValue = customDatatypes;
    if (customDatatypesValue != null) {
      map['customDatatypes'] = customDatatypesValue;
    }
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final disableValueTrimmingValue = disableValueTrimming;
    if (disableValueTrimmingValue != null) {
      map['disableValueTrimming'] = disableValueTrimmingValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue;
    }
    final quoteSymbolValue = quoteSymbol;
    if (quoteSymbolValue != null) {
      map['quoteSymbol'] = quoteSymbolValue;
    }
    final serdeValue = serde;
    if (serdeValue != null) {
      map['serde'] = serdeValue;
    }
    return map;
  }

  factory ClassifierCsvClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierCsvClassifier(
      allowSingleColumn: map['allowSingleColumn'] == null
          ? null
          : map['allowSingleColumn'] as bool,
      containsHeader: map['containsHeader'] == null
          ? null
          : map['containsHeader'] as String,
      customDatatypeConfigured: map['customDatatypeConfigured'] == null
          ? null
          : map['customDatatypeConfigured'] as bool,
      customDatatypes: map['customDatatypes'] == null
          ? null
          : (map['customDatatypes'] as List).cast<String>(),
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      disableValueTrimming: map['disableValueTrimming'] == null
          ? null
          : map['disableValueTrimming'] as bool,
      headers: map['headers'] == null
          ? null
          : (map['headers'] as List).cast<String>(),
      quoteSymbol:
          map['quoteSymbol'] == null ? null : map['quoteSymbol'] as String,
      serde: map['serde'] == null ? null : map['serde'] as String,
    );
  }
}
