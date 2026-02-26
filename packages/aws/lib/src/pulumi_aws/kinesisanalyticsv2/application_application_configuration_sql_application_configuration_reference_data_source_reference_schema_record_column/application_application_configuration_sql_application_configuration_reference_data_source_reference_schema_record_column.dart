// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn {
  /// A reference to the data element in the streaming input or the reference data source.
  final String? mapping;

  /// The name of the column that is created in the in-application input stream or reference table.
  final String name;

  /// The type of column created in the in-application input stream or reference table.
  final String sqlType;

  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mappingValue = mapping;
    if (mappingValue != null) {
      map['mapping'] = mappingValue;
    }
    map['name'] = name;
    map['sqlType'] = sqlType;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn(
      mapping: map['mapping'] == null ? null : map['mapping'] as String,
      name: map['name'] as String,
      sqlType: map['sqlType'] as String,
    );
  }
}
