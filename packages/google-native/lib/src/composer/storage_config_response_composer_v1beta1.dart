// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for data storage in the environment.
class StorageConfigResponseComposerV1beta1 {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final String bucket;

  /// Creates a new [StorageConfigResponseComposerV1beta1].
  /// [bucket] Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  StorageConfigResponseComposerV1beta1({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory StorageConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return StorageConfigResponseComposerV1beta1(
      bucket: map['bucket'] as String,
    );
  }
}
