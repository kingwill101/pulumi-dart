// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec_view_type.dart';

/// Specification that applies to database view.
class GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec {
  /// Name of a singular table this view reflects one to one.
  final String? baseTable;

  /// SQL query used to generate this view.
  final String? sqlQuery;

  /// Type of this view.
  final GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType?
      viewType;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec].
  /// [baseTable] Name of a singular table this view reflects one to one.
  /// [sqlQuery] SQL query used to generate this view.
  /// [viewType] Type of this view.
  GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec({
    this.baseTable,
    this.sqlQuery,
    this.viewType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseTableValue = baseTable;
    if (baseTableValue != null) {
      map['baseTable'] = baseTableValue;
    }
    final sqlQueryValue = sqlQuery;
    if (sqlQueryValue != null) {
      map['sqlQuery'] = sqlQueryValue;
    }
    final viewTypeValue = viewType;
    if (viewTypeValue != null) {
      map['viewType'] = viewTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec(
      baseTable: map['baseTable'] == null ? null : map['baseTable'] as String,
      sqlQuery: map['sqlQuery'] == null ? null : map['sqlQuery'] as String,
      viewType: map['viewType'] == null
          ? null
          : GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType
              .fromValue(map['viewType'] as String),
    );
  }
}
