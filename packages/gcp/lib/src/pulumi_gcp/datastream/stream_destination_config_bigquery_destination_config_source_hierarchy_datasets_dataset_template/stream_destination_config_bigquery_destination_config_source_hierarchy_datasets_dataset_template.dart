// ignore_for_file: unused_element, unnecessary_cast

class StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate {
  /// If supplied, every created dataset will have its name prefixed by the provided value.
  /// The prefix and name will be separated by an underscore. i.e. _.
  final String? datasetIdPrefix;

  /// Describes the Cloud KMS encryption key that will be used to protect destination BigQuery
  /// table. The BigQuery Service Account associated with your project requires access to this
  /// encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}.
  /// See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information.
  final String? kmsKeyName;

  /// The geographic location where the dataset should reside.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final String location;

  StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate({
    this.datasetIdPrefix,
    this.kmsKeyName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdPrefixValue = datasetIdPrefix;
    if (datasetIdPrefixValue != null) {
      map['datasetIdPrefix'] = datasetIdPrefixValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['location'] = location;
    return map;
  }

  factory StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate.fromMap(
      Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate(
      datasetIdPrefix: map['datasetIdPrefix'] == null
          ? null
          : map['datasetIdPrefix'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      location: map['location'] as String,
    );
  }
}
