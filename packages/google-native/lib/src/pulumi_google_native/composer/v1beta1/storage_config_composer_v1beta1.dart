// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for data storage in the environment.
class StorageConfigComposerV1beta1 {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final String? bucket;

  StorageConfigComposerV1beta1({
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

  factory StorageConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageConfigComposerV1beta1(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
    );
  }
}
