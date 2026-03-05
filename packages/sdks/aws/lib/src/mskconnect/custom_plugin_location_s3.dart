// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomPluginLocationS3 {
  /// The Amazon Resource Name (ARN) of an S3 bucket.
  final pulumi.Input<String> bucketArn;
  /// The file key for an object in an S3 bucket.
  final pulumi.Input<String> fileKey;
  /// The version of an object in an S3 bucket.
  final pulumi.Input<String>? objectVersion;

  /// Creates a new [CustomPluginLocationS3].
  /// [bucketArn] The Amazon Resource Name (ARN) of an S3 bucket.
  /// [fileKey] The file key for an object in an S3 bucket.
  /// [objectVersion] The version of an object in an S3 bucket.
  CustomPluginLocationS3({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
      'objectVersion': ?objectVersion,
    };
  }

  factory CustomPluginLocationS3.fromMap(Map<String, dynamic> map) {
    return CustomPluginLocationS3(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      fileKey: pulumi.Input.fromValue(map['fileKey'] as String),
      objectVersion: (() { final guardedValue = map['objectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

