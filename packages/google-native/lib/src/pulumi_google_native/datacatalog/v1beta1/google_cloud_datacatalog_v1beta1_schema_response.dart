// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_v1beta1_column_schema_response.dart';

/// Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
class GoogleCloudDatacatalogV1beta1SchemaResponse {
  /// Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  final List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse> columns;

  GoogleCloudDatacatalogV1beta1SchemaResponse({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = Input.encodeList<
        GoogleCloudDatacatalogV1beta1ColumnSchemaResponse,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1SchemaResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1SchemaResponse(
      columns:
          Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>(
              map['columns'],
              (value) =>
                  GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
