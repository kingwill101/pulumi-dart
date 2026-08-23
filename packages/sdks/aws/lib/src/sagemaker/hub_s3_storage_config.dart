// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubS3StorageConfig {
  /// The Amazon S3 bucket prefix for hosting hub content.interface.
  final pulumi.Input<String>? s3OutputPath;

  /// Creates a new [HubS3StorageConfig].
  /// [s3OutputPath] The Amazon S3 bucket prefix for hosting hub content.interface.
  const HubS3StorageConfig({
    this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3OutputPath': ?s3OutputPath,
    };
  }

  factory HubS3StorageConfig.fromMap(Map<String, dynamic> map) {
    return HubS3StorageConfig(
      s3OutputPath: (() { final guardedValue = map['s3OutputPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
