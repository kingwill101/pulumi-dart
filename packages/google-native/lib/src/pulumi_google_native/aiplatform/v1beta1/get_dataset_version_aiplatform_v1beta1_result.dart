// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatasetVersion.
class GetDatasetVersionAiplatformV1beta1Result {
  /// Name of the associated BigQuery dataset.
  final String bigQueryDatasetName;

  /// Timestamp when this DatasetVersion was created.
  final String createTime;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// The resource name of the DatasetVersion.
  final String name;

  /// Timestamp when this DatasetVersion was last updated.
  final String updateTime;

  GetDatasetVersionAiplatformV1beta1Result({
    required this.bigQueryDatasetName,
    required this.createTime,
    required this.etag,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryDatasetName'] = bigQueryDatasetName;
    map['createTime'] = createTime;
    map['etag'] = etag;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDatasetVersionAiplatformV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetVersionAiplatformV1beta1Result(
      bigQueryDatasetName: map['bigQueryDatasetName'] as String,
      createTime: map['createTime'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
