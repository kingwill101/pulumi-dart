// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentStorageConfig {
  /// Optional. Name of an existing Cloud Storage bucket to be used by the environment.
  final String bucket;

  /// Creates a new [EnvironmentStorageConfig].
  /// [bucket] Optional. Name of an existing Cloud Storage bucket to be used by the environment.
  EnvironmentStorageConfig({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory EnvironmentStorageConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfig(
      bucket: map['bucket'] as String,
    );
  }
}
