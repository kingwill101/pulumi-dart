// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for data storage in the environment.
class StorageConfigResponse {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final String bucket;

  StorageConfigResponse({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory StorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigResponse(
      bucket: map['bucket'] as String,
    );
  }
}
