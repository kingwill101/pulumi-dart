// ignore_for_file: unused_element, unnecessary_cast

class DatascanData {
  /// The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan.
  final String? entity;

  /// The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
  /// Cloud Storage bucket (//storage.googleapis.com/projects/PROJECT_ID/buckets/BUCKET_ID) for DataDiscoveryScan OR BigQuery table of type "TABLE" (/bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID) for DataProfileScan/DataQualityScan.
  final String? resource;

  /// Creates a new [DatascanData].
  /// [entity] The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan.
  /// [resource] The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
  DatascanData({
    this.entity,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entityValue = entity;
    if (entityValue != null) {
      map['entity'] = entityValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    return map;
  }

  factory DatascanData.fromMap(Map<String, dynamic> map) {
    return DatascanData(
      entity: map['entity'] == null ? null : map['entity'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}
