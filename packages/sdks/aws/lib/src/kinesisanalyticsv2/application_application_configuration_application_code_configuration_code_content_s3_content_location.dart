// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation {
  /// The ARN for the S3 bucket containing the application code.
  final pulumi.Input<String> bucketArn;
  /// The file key for the object containing the application code.
  final pulumi.Input<String> fileKey;
  /// The version of the object containing the application code.
  final pulumi.Input<String>? objectVersion;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation].
  /// [bucketArn] The ARN for the S3 bucket containing the application code.
  /// [fileKey] The file key for the object containing the application code.
  /// [objectVersion] The version of the object containing the application code.
  ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation({
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
      bucketArn: (map['bucketArn'] as String).input(),
      fileKey: (map['fileKey'] as String).input(),
      objectVersion: map['objectVersion'] == null ? null : (map['objectVersion'] as String).input(),
    );
  }
}

