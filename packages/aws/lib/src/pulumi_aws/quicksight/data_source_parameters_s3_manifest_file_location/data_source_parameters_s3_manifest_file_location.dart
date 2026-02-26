// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersS3ManifestFileLocation {
  /// The name of the bucket that contains the manifest file.
  final String bucket;

  /// The key of the manifest file within the bucket.
  final String key;

  DataSourceParametersS3ManifestFileLocation({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory DataSourceParametersS3ManifestFileLocation.fromMap(
      Map<String, dynamic> map) {
    return DataSourceParametersS3ManifestFileLocation(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
