// ignore_for_file: unused_element, unnecessary_cast

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1beta1BigQueryTableSpec {
  /// Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  final Map<String, dynamic>? tableSpec;

  /// Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  final Map<String, dynamic>? viewSpec;

  /// Creates a new [GoogleCloudDatacatalogV1beta1BigQueryTableSpec].
  /// [tableSpec] Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  /// [viewSpec] Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  GoogleCloudDatacatalogV1beta1BigQueryTableSpec({
    this.tableSpec,
    this.viewSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tableSpec': ?tableSpec, 'viewSpec': ?viewSpec};
  }

  factory GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1beta1BigQueryTableSpec(
      tableSpec: map['tableSpec'] == null
          ? null
          : (map['tableSpec'] as Map).cast<String, dynamic>(),
      viewSpec: map['viewSpec'] == null
          ? null
          : (map['viewSpec'] as Map).cast<String, dynamic>(),
    );
  }
}
