// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionOssMountConfigMountPoint {
  /// OSS Bucket name.
  final pulumi.Input<String> bucketName;
  /// Path of the mounted OSS Bucket.
  final pulumi.Input<String> bucketPath;
  /// OSS access endpoint.
  final pulumi.Input<String> endpoint;
  /// Mount Directory.
  final pulumi.Input<String> mountDir;
  /// Read-only.
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetV3FunctionsFunctionOssMountConfigMountPoint].
  /// [bucketName] OSS Bucket name.
  /// [bucketPath] Path of the mounted OSS Bucket.
  /// [endpoint] OSS access endpoint.
  /// [mountDir] Mount Directory.
  /// [readOnly] Read-only.
  GetV3FunctionsFunctionOssMountConfigMountPoint({
    required this.bucketName,
    required this.bucketPath,
    required this.endpoint,
    required this.mountDir,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPath': bucketPath,
      'endpoint': endpoint,
      'mountDir': mountDir,
      'readOnly': readOnly,
    };
  }

  factory GetV3FunctionsFunctionOssMountConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionOssMountConfigMountPoint(
      bucketName: (map['bucketName'] as String).input(),
      bucketPath: (map['bucketPath'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      mountDir: (map['mountDir'] as String).input(),
      readOnly: (map['readOnly'] as bool).input(),
    );
  }
}

