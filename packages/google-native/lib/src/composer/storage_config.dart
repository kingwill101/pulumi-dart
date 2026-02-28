// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for data storage in the environment.
class StorageConfig {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final String? bucket;

  /// Creates a new [StorageConfig].
  /// [bucket] Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  StorageConfig({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    return map;
  }

  factory StorageConfig.fromMap(Map<String, dynamic> map) {
    return StorageConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
    );
  }
}
