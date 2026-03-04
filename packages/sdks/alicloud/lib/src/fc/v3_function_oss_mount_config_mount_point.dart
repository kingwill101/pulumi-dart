// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionOssMountConfigMountPoint {
  /// OSS Bucket name
  final pulumi.Input<String>? bucketName;

  /// Path of the mounted OSS Bucket
  final pulumi.Input<String>? bucketPath;

  /// OSS access endpoint
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? mountDir;

  /// Read-only
  final pulumi.Input<bool>? readOnly;

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
      bucketName: (() {
        final guardedValue = map['bucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucketPath: (() {
        final guardedValue = map['bucketPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountDir: (() {
        final guardedValue = map['mountDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
