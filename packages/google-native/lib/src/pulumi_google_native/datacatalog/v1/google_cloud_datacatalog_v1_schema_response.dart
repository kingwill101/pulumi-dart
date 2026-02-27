// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema_response.dart';

/// Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
class GoogleCloudDatacatalogV1SchemaResponse {
  /// The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested columns is 10,000. The maximum nested depth is 15 levels.
  final List<GoogleCloudDatacatalogV1ColumnSchemaResponse> columns;

  GoogleCloudDatacatalogV1SchemaResponse({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1ColumnSchemaResponse,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1SchemaResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SchemaResponse(
      columns:
          pulumi.Input.decodeList<GoogleCloudDatacatalogV1ColumnSchemaResponse>(
              map['columns'],
              (value) => GoogleCloudDatacatalogV1ColumnSchemaResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
