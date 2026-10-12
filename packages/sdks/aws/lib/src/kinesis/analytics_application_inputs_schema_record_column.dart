// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordColumn {
  final pulumi.Input<String?>? mapping;
  /// Name of the Kinesis Analytics Application.
  final pulumi.Input<String> name;
  final pulumi.Input<String> sqlType;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordColumn].
  /// [mapping] Optional.
  /// [name] Name of the Kinesis Analytics Application.
  /// [sqlType] Required.
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
