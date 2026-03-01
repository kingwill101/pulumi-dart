// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_view_spec_response.dart';

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1BigQueryTableSpecResponse {
  /// The table source type.
  final String tableSourceType;

  /// Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  final GoogleCloudDatacatalogV1TableSpecResponse tableSpec;

  /// Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  final GoogleCloudDatacatalogV1ViewSpecResponse viewSpec;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryTableSpecResponse].
  /// [tableSourceType] The table source type.
  /// [tableSpec] Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  /// [viewSpec] Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  GoogleCloudDatacatalogV1BigQueryTableSpecResponse({
    required this.tableSourceType,
    required this.tableSpec,
    required this.viewSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableSourceType': tableSourceType,
      'tableSpec': tableSpec.toMap(),
      'viewSpec': viewSpec.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1BigQueryTableSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1BigQueryTableSpecResponse(
      tableSourceType: map['tableSourceType'] as String,
      tableSpec: GoogleCloudDatacatalogV1TableSpecResponse.fromMap(
        (map['tableSpec'] as Map).cast<String, dynamic>(),
      ),
      viewSpec: GoogleCloudDatacatalogV1ViewSpecResponse.fromMap(
        (map['viewSpec'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
