// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn {
  /// A reference to the data element in the streaming input or the reference data source.
  final String? mapping;
  /// The name of the column that is created in the in-application input stream or reference table.
  final String name;
  /// The type of column created in the in-application input stream or reference table.
  final String sqlType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn].
  /// [mapping] A reference to the data element in the streaming input or the reference data source.
  /// [name] The name of the column that is created in the in-application input stream or reference table.
  /// [sqlType] The type of column created in the in-application input stream or reference table.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn({
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
      mapping: map['mapping'] == null ? null : map['mapping'] as String,
      name: map['name'] as String,
      sqlType: map['sqlType'] as String,
    );
  }
}

