// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn {
  /// The Mapping reference to the data element.
  final String? mapping;

  /// Name of the column.
  final String name;

  /// The SQL Type of the column.
  final String sqlType;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn].
  /// [mapping] The Mapping reference to the data element.
  /// [name] Name of the column.
  /// [sqlType] The SQL Type of the column.
  AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn({
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

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordColumn(
      mapping: map['mapping'] == null ? null : map['mapping'] as String,
      name: map['name'] as String,
      sqlType: map['sqlType'] as String,
    );
  }
}
