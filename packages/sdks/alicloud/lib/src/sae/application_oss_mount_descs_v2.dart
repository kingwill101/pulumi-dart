// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationOssMountDescsV2 {
  /// The name of the OSS bucket.
  final pulumi.Input<String>? bucketName;
  /// The directory or object in OSS.
  final pulumi.Input<String>? bucketPath;
  /// The path of the container in SAE.
  final pulumi.Input<String>? mountPath;
  /// Specifies whether the application can use the container path to read data from or write data to resources in the directory of the OSS bucket. Valid values:
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [ApplicationOssMountDescsV2].
  /// [bucketName] The name of the OSS bucket.
  /// [bucketPath] The directory or object in OSS.
  /// [mountPath] The path of the container in SAE.
  /// [readOnly] Specifies whether the application can use the container path to read data from or write data to resources in the directory of the OSS bucket. Valid values:
  ApplicationOssMountDescsV2({
    this.bucketName,
    this.bucketPath,
    this.mountPath,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPath': ?bucketPath,
      'mountPath': ?mountPath,
      'readOnly': ?readOnly,
    };
  }

  factory ApplicationOssMountDescsV2.fromMap(Map<String, dynamic> map) {
    return ApplicationOssMountDescsV2(
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
      bucketPath: map['bucketPath'] == null ? null : (map['bucketPath']! as String).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
    );
  }
}

