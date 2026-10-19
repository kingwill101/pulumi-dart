// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation {
  /// ARN for the S3 bucket containing the application code.
  final pulumi.Input<String> bucketArn;
  /// File key for the object containing the application code.
  final pulumi.Input<String> fileKey;
  /// Version of the object containing the application code.
  final pulumi.Input<String?>? objectVersion;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation].
  /// [bucketArn] ARN for the S3 bucket containing the application code.
  /// [fileKey] File key for the object containing the application code.
  /// [objectVersion] Version of the object containing the application code.
  const ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation({
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

  factory ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      fileKey: pulumi.Input.fromValue(map['fileKey'] as String),
      objectVersion: (() { final guardedValue = map['objectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
