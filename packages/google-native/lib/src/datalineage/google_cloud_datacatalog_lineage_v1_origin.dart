// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_lineage_v1_origin_source_type.dart';

/// Origin of a process.
class GoogleCloudDatacatalogLineageV1Origin {
  /// If the source_type isn't CUSTOM, the value of this field should be a GCP resource name of the system, which reports lineage. The project and location parts of the resource name must match the project and location of the lineage resource being created. Examples: - `{source_type: COMPOSER, name: "projects/foo/locations/us/environments/bar"}` - `{source_type: BIGQUERY, name: "projects/foo/locations/eu"}` - `{source_type: CUSTOM, name: "myCustomIntegration"}`
  final String? name;

  /// Type of the source. Use of a source_type other than `CUSTOM` for process creation or updating is highly discouraged, and may be restricted in the future without notice.
  final GoogleCloudDatacatalogLineageV1OriginSourceType? sourceType;

  /// Creates a new [GoogleCloudDatacatalogLineageV1Origin].
  /// [name] If the source_type isn't CUSTOM, the value of this field should be a GCP resource name of the system, which reports lineage. The project and location parts of the resource name must match the project and location of the lineage resource being created. Examples: - `{source_type: COMPOSER, name: "projects/foo/locations/us/environments/bar"}` - `{source_type: BIGQUERY, name: "projects/foo/locations/eu"}` - `{source_type: CUSTOM, name: "myCustomIntegration"}`
  /// [sourceType] Type of the source. Use of a source_type other than `CUSTOM` for process creation or updating is highly discouraged, and may be restricted in the future without notice.
  GoogleCloudDatacatalogLineageV1Origin({this.name, this.sourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceType': ?sourceType == null ? null : sourceType!.value,
    };
  }

  factory GoogleCloudDatacatalogLineageV1Origin.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogLineageV1Origin(
      name: map['name'] == null ? null : map['name'] as String,
      sourceType: map['sourceType'] == null
          ? null
          : GoogleCloudDatacatalogLineageV1OriginSourceType.fromValue(
              map['sourceType'] as String,
            ),
    );
  }
}
