// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionOssMountConfigMountPoint {
  /// OSS Bucket name.
  final String bucketName;
  /// Path of the mounted OSS Bucket.
  final String bucketPath;
  /// OSS access endpoint.
  final String endpoint;
  /// Mount Directory.
  final String mountDir;
  /// Read-only.
  final bool readOnly;

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
      bucketName: map['bucketName'] as String,
      bucketPath: map['bucketPath'] as String,
      endpoint: map['endpoint'] as String,
      mountDir: map['mountDir'] as String,
      readOnly: map['readOnly'] as bool,
    );
  }
}

