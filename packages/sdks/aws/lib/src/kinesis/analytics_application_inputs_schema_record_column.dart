// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordColumn {
  /// The Mapping reference to the data element.
  final pulumi.Input<String?>? mapping;
  /// Name of the column.
  final pulumi.Input<String> name;
  /// The SQL Type of the column.
  final pulumi.Input<String> sqlType;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordColumn].
  /// [mapping] The Mapping reference to the data element.
  /// [name] Name of the column.
  /// [sqlType] The SQL Type of the column.
  const AnalyticsApplicationInputsSchemaRecordColumn({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapping': ?mapping,
      'name': name,
      'sqlType': sqlType,
    };
  }

  factory AnalyticsApplicationInputsSchemaRecordColumn.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordColumn(
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlType: pulumi.Input.fromValue(map['sqlType'] as String),
    );
  }
}
