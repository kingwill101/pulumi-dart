// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn {
  /// Reference to the data element in the streaming input or the reference data source.
  final pulumi.Input<String?>? mapping;
  /// Name of the column that is created in the in-application input stream or reference table.
  final pulumi.Input<String> name;
  /// Type of column created in the in-application input stream or reference table.
  final pulumi.Input<String> sqlType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn].
  /// [mapping] Reference to the data element in the streaming input or the reference data source.
  /// [name] Name of the column that is created in the in-application input stream or reference table.
  /// [sqlType] Type of column created in the in-application input stream or reference table.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn({
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

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn(
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlType: pulumi.Input.fromValue(map['sqlType'] as String),
    );
  }
}
