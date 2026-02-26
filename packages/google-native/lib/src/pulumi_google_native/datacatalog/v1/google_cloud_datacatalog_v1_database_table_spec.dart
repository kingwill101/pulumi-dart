// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec.dart';
import 'google_cloud_datacatalog_v1_database_table_spec_type.dart';

/// Specification that applies to a table resource. Valid only for entries with the `TABLE` type.
class GoogleCloudDatacatalogV1DatabaseTableSpec {
  /// Spec what aplies to tables that are actually views. Not set for "real" tables.
  final GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec?
      databaseViewSpec;

  /// Type of this table.
  final GoogleCloudDatacatalogV1DatabaseTableSpecType? type;

  GoogleCloudDatacatalogV1DatabaseTableSpec({
    this.databaseViewSpec,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseViewSpecValue = databaseViewSpec;
    if (databaseViewSpecValue != null) {
      map['databaseViewSpec'] = databaseViewSpecValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpec(
      databaseViewSpec: map['databaseViewSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec.fromMap(
              (map['databaseViewSpec'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : GoogleCloudDatacatalogV1DatabaseTableSpecType.fromValue(
              map['type'] as String),
    );
  }
}
