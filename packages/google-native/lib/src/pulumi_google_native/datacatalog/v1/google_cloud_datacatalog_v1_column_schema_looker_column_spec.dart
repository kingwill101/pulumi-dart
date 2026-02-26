// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec_type.dart';

/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec {
  /// Looker specific column type of this column.
  final GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType? type;

  GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec(
      type: map['type'] == null
          ? null
          : GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType.fromValue(
              map['type'] as String),
    );
  }
}
