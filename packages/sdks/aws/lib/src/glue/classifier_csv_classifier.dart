// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassifierCsvClassifier {
  /// Enables the processing of files that contain only one column.
  final pulumi.Input<bool?>? allowSingleColumn;
  /// Whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
  final pulumi.Input<String?>? containsHeader;
  /// Enables the custom datatype to be configured.
  final pulumi.Input<bool?>? customDatatypeConfigured;
  /// List of supported custom datatypes. Valid values are `BINARY`, `BOOLEAN`, `DATE`, `DECIMAL`, `DOUBLE`, `FLOAT`, `INT`, `LONG`, `SHORT`, `STRING`, `TIMESTAMP`.
  final pulumi.Input<List<String>?>? customDatatypes;
  /// Delimiter used in the CSV to separate columns.
  final pulumi.Input<String?>? delimiter;
  /// Whether to trim column values.
  final pulumi.Input<bool?>? disableValueTrimming;
  /// List of strings representing column names.
  final pulumi.Input<List<String>?>? headers;
  /// Custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
  final pulumi.Input<String?>? quoteSymbol;
  /// SerDe for processing CSV. Valid values are `OpenCSVSerDe`, `LazySimpleSerDe`, `None`.
  final pulumi.Input<String?>? serde;

  /// Creates a new [ClassifierCsvClassifier].
  /// [allowSingleColumn] Enables the processing of files that contain only one column.
  /// [containsHeader] Whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
  /// [customDatatypeConfigured] Enables the custom datatype to be configured.
  /// [customDatatypes] List of supported custom datatypes. Valid values are `BINARY`, `BOOLEAN`, `DATE`, `DECIMAL`, `DOUBLE`, `FLOAT`, `INT`, `LONG`, `SHORT`, `STRING`, `TIMESTAMP`.
  /// [delimiter] Delimiter used in the CSV to separate columns.
  /// [disableValueTrimming] Whether to trim column values.
  /// [headers] List of strings representing column names.
  /// [quoteSymbol] Custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
  /// [serde] SerDe for processing CSV. Valid values are `OpenCSVSerDe`, `LazySimpleSerDe`, `None`.
  const ClassifierCsvClassifier({
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
    return <String, dynamic>{
      'allowSingleColumn': ?allowSingleColumn,
      'containsHeader': ?containsHeader,
      'customDatatypeConfigured': ?customDatatypeConfigured,
      'customDatatypes': ?customDatatypes,
      'delimiter': ?delimiter,
      'disableValueTrimming': ?disableValueTrimming,
      'headers': ?headers,
      'quoteSymbol': ?quoteSymbol,
      'serde': ?serde,
    };
  }

  factory ClassifierCsvClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierCsvClassifier(
      allowSingleColumn: (() { final guardedValue = map['allowSingleColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containsHeader: (() { final guardedValue = map['containsHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDatatypeConfigured: (() { final guardedValue = map['customDatatypeConfigured']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customDatatypes: (() { final guardedValue = map['customDatatypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableValueTrimming: (() { final guardedValue = map['disableValueTrimming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      quoteSymbol: (() { final guardedValue = map['quoteSymbol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serde: (() { final guardedValue = map['serde']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
