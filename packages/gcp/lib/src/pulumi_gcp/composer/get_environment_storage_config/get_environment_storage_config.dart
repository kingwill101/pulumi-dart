// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentStorageConfig {
  /// Optional. Name of an existing Cloud Storage bucket to be used by the environment.
  final String bucket;

  GetEnvironmentStorageConfig({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory GetEnvironmentStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentStorageConfig(
      bucket: map['bucket'] as String,
    );
  }
}
