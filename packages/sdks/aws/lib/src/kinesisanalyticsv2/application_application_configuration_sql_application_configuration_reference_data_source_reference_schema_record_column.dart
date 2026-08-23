// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn {
  /// A reference to the data element in the streaming input or the reference data source.
  final pulumi.Input<String>? mapping;
  /// The name of the column that is created in the in-application input stream or reference table.
  final pulumi.Input<String> name;
  /// The type of column created in the in-application input stream or reference table.
  final pulumi.Input<String> sqlType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn].
  /// [mapping] A reference to the data element in the streaming input or the reference data source.
  /// [name] The name of the column that is created in the in-application input stream or reference table.
  /// [sqlType] The type of column created in the in-application input stream or reference table.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn({
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

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn(
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlType: pulumi.Input.fromValue(map['sqlType'] as String),
    );
  }
}
