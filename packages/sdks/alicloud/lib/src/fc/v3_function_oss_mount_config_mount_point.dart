// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionOssMountConfigMountPoint {
  /// OSS Bucket name
  final String? bucketName;
  /// Path of the mounted OSS Bucket
  final String? bucketPath;
  /// OSS access endpoint
  final String? endpoint;
  final String? mountDir;
  /// Read-only
  final bool? readOnly;

  /// Creates a new [V3FunctionOssMountConfigMountPoint].
  /// [bucketName] OSS Bucket name
  /// [bucketPath] Path of the mounted OSS Bucket
  /// [endpoint] OSS access endpoint
  /// [mountDir] Optional.
  /// [readOnly] Read-only
  V3FunctionOssMountConfigMountPoint({
    this.bucketName,
    this.bucketPath,
    this.endpoint,
    this.mountDir,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPath': ?bucketPath,
      'endpoint': ?endpoint,
      'mountDir': ?mountDir,
      'readOnly': ?readOnly,
    };
  }

  factory V3FunctionOssMountConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return V3FunctionOssMountConfigMountPoint(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketPath: map['bucketPath'] == null ? null : map['bucketPath'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      mountDir: map['mountDir'] == null ? null : map['mountDir'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

