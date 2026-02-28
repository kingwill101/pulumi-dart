// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatasetVersion.
class GetDatasetVersionResult {
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

  /// Creates a new [GetDatasetVersionResult].
  /// [bigQueryDatasetName] Name of the associated BigQuery dataset.
  /// [createTime] Timestamp when this DatasetVersion was created.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [name] The resource name of the DatasetVersion.
  /// [updateTime] Timestamp when this DatasetVersion was last updated.
  GetDatasetVersionResult({
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

  factory GetDatasetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetVersionResult(
      bigQueryDatasetName: map['bigQueryDatasetName'] as String,
      createTime: map['createTime'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
