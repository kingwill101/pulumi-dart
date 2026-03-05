// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassifierCsvClassifier {
  /// Enables the processing of files that contain only one column.
  final pulumi.Input<bool>? allowSingleColumn;
  /// Indicates whether the CSV file contains a header. This can be one of "ABSENT", "PRESENT", or "UNKNOWN".
  final pulumi.Input<String>? containsHeader;
  /// Enables the custom datatype to be configured.
  final pulumi.Input<bool>? customDatatypeConfigured;
  /// A list of supported custom datatypes. Valid values are `BINARY`, `BOOLEAN`, `DATE`, `DECIMAL`, `DOUBLE`, `FLOAT`, `INT`, `LONG`, `SHORT`, `STRING`, `TIMESTAMP`.
  final pulumi.Input<List<String>>? customDatatypes;
  /// The delimiter used in the CSV to separate columns.
  final pulumi.Input<String>? delimiter;
  /// Specifies whether to trim column values.
  final pulumi.Input<bool>? disableValueTrimming;
  /// A list of strings representing column names.
  final pulumi.Input<List<String>>? headers;
  /// A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
  final pulumi.Input<String>? quoteSymbol;
  /// The SerDe for processing CSV. Valid values are `OpenCSVSerDe`, `LazySimpleSerDe`, `None`.
  final pulumi.Input<String>? serde;

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

