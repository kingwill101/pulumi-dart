// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersS3ManifestFileLocation {
  /// Name of the bucket that contains the manifest file.
  final pulumi.Input<String> bucket;
  /// Key of the manifest file within the bucket.
  final pulumi.Input<String> key;

  /// Creates a new [DataSourceParametersS3ManifestFileLocation].
  /// [bucket] Name of the bucket that contains the manifest file.
  /// [key] Key of the manifest file within the bucket.
  const DataSourceParametersS3ManifestFileLocation({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
    };
  }

  factory DataSourceParametersS3ManifestFileLocation.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersS3ManifestFileLocation(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
