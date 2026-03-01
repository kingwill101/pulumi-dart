// ignore_for_file: unused_element, unnecessary_cast

/// Specification that applies to database view.
class GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse {
  /// Name of a singular table this view reflects one to one.
  final String baseTable;

  /// SQL query used to generate this view.
  final String sqlQuery;

  /// Type of this view.
  final String viewType;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse].
  /// [baseTable] Name of a singular table this view reflects one to one.
  /// [sqlQuery] SQL query used to generate this view.
  /// [viewType] Type of this view.
  GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse({
    required this.baseTable,
    required this.sqlQuery,
    required this.viewType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTable': baseTable,
      'sqlQuery': sqlQuery,
      'viewType': viewType,
    };
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse(
      baseTable: map['baseTable'] as String,
      sqlQuery: map['sqlQuery'] as String,
      viewType: map['viewType'] as String,
    );
  }
}
