// ignore_for_file: unused_element, unnecessary_cast

/// Configuration detail for datastore
class GoogleCloudApigeeV1DatastoreConfig {
  /// Name of the Cloud Storage bucket. Required for `gcs` target_type.
  final String? bucketName;

  /// BigQuery dataset name Required for `bigquery` target_type.
  final String? datasetName;

  /// Path of Cloud Storage bucket Required for `gcs` target_type.
  final String? path;

  /// GCP project in which the datastore exists
  final String project;

  /// Prefix of BigQuery table Required for `bigquery` target_type.
  final String? tablePrefix;

  GoogleCloudApigeeV1DatastoreConfig({
    this.bucketName,
    this.datasetName,
    this.path,
    required this.project,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final datasetNameValue = datasetName;
    if (datasetNameValue != null) {
      map['datasetName'] = datasetNameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['project'] = project;
    final tablePrefixValue = tablePrefix;
    if (tablePrefixValue != null) {
      map['tablePrefix'] = tablePrefixValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1DatastoreConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DatastoreConfig(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      datasetName:
          map['datasetName'] == null ? null : map['datasetName'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      project: map['project'] as String,
      tablePrefix:
          map['tablePrefix'] == null ? null : map['tablePrefix'] as String,
    );
  }
}
