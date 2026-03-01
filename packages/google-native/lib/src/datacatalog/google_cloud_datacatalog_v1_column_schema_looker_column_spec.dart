// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec_type.dart';

/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec {
  /// Looker specific column type of this column.
  final GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType? type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec].
  /// [type] Looker specific column type of this column.
  GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type == null ? null : type!.value};
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec(
      type: map['type'] == null
          ? null
          : GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType.fromValue(
              map['type'] as String,
            ),
    );
  }
}
