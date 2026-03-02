// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordColumn {
  /// The Mapping reference to the data element.
  final pulumi.Input<String>? mapping;
  /// Name of the column.
  final pulumi.Input<String> name;
  /// The SQL Type of the column.
  final pulumi.Input<String> sqlType;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordColumn].
  /// [mapping] The Mapping reference to the data element.
  /// [name] Name of the column.
  /// [sqlType] The SQL Type of the column.
  AnalyticsApplicationInputsSchemaRecordColumn({
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
      mapping: map['mapping'] == null ? null : ((map['mapping'] as String).input()).input(),
      name: (map['name'] as String).input(),
      sqlType: (map['sqlType'] as String).input(),
    );
  }
}

