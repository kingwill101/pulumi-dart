// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildStorageLocation {
  /// Name of your S3 bucket.
  final pulumi.Input<String> bucket;
  /// Name of the zip file containing your build files.
  final pulumi.Input<String> key;
  /// A specific version of the file. If not set, the latest version of the file is retrieved.
  final pulumi.Input<String>? objectVersion;
  /// ARN of the access role that allows Amazon GameLift to access your S3 bucket.
  final pulumi.Input<String> roleArn;

  /// Creates a new [BuildStorageLocation].
  /// [bucket] Name of your S3 bucket.
  /// [key] Name of the zip file containing your build files.
  /// [objectVersion] A specific version of the file. If not set, the latest version of the file is retrieved.
  /// [roleArn] ARN of the access role that allows Amazon GameLift to access your S3 bucket.
  BuildStorageLocation({
    required this.bucket,
    required this.key,
    this.objectVersion,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'objectVersion': ?objectVersion,
      'roleArn': roleArn,
    };
  }

  factory BuildStorageLocation.fromMap(Map<String, dynamic> map) {
    return BuildStorageLocation(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      objectVersion: (() { final guardedValue = map['objectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

