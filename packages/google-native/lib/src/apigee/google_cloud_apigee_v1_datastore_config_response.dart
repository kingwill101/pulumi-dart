// ignore_for_file: unused_element, unnecessary_cast

/// Configuration detail for datastore
class GoogleCloudApigeeV1DatastoreConfigResponse {
  /// Name of the Cloud Storage bucket. Required for `gcs` target_type.
  final String bucketName;

  /// BigQuery dataset name Required for `bigquery` target_type.
  final String datasetName;

  /// Path of Cloud Storage bucket Required for `gcs` target_type.
  final String path;

  /// GCP project in which the datastore exists
  final String project;

  /// Prefix of BigQuery table Required for `bigquery` target_type.
  final String tablePrefix;

  /// Creates a new [GoogleCloudApigeeV1DatastoreConfigResponse].
  /// [bucketName] Name of the Cloud Storage bucket. Required for `gcs` target_type.
  /// [datasetName] BigQuery dataset name Required for `bigquery` target_type.
  /// [path] Path of Cloud Storage bucket Required for `gcs` target_type.
  /// [project] GCP project in which the datastore exists
  /// [tablePrefix] Prefix of BigQuery table Required for `bigquery` target_type.
  GoogleCloudApigeeV1DatastoreConfigResponse({
    required this.bucketName,
    required this.datasetName,
    required this.path,
    required this.project,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['datasetName'] = datasetName;
    map['path'] = path;
    map['project'] = project;
    map['tablePrefix'] = tablePrefix;
    return map;
  }

  factory GoogleCloudApigeeV1DatastoreConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DatastoreConfigResponse(
      bucketName: map['bucketName'] as String,
      datasetName: map['datasetName'] as String,
      path: map['path'] as String,
      project: map['project'] as String,
      tablePrefix: map['tablePrefix'] as String,
    );
  }
}
