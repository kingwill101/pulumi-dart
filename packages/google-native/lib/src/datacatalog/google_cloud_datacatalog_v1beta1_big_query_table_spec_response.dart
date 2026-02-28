// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1beta1_table_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_view_spec_response.dart';

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse {
  /// The table source type.
  final String tableSourceType;

  /// Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  final GoogleCloudDatacatalogV1beta1TableSpecResponse tableSpec;

  /// Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  final GoogleCloudDatacatalogV1beta1ViewSpecResponse viewSpec;

  /// Creates a new [GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse].
  /// [tableSourceType] The table source type.
  /// [tableSpec] Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  /// [viewSpec] Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse({
    required this.tableSourceType,
    required this.tableSpec,
    required this.viewSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tableSourceType'] = tableSourceType;
    map['tableSpec'] = tableSpec.toMap();
    map['viewSpec'] = viewSpec.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse(
      tableSourceType: map['tableSourceType'] as String,
      tableSpec: GoogleCloudDatacatalogV1beta1TableSpecResponse.fromMap(
          (map['tableSpec'] as Map).cast<String, dynamic>()),
      viewSpec: GoogleCloudDatacatalogV1beta1ViewSpecResponse.fromMap(
          (map['viewSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
