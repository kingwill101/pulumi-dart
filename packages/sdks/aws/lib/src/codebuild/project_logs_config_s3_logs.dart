// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectLogsConfigS3Logs {
  /// Specifies the bucket owner's access for objects that another account uploads to
  /// their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these
  /// objects. This property allows you to give the bucket owner access to these objects. Valid values are `NONE`,
  /// `READ_ONLY`, and `FULL`. your CodeBuild service role must have the `s3:PutBucketAcl` permission. This permission
  /// allows CodeBuild to modify the access control list for the bucket.
  final pulumi.Input<String>? bucketOwnerAccess;
  /// Whether to disable encrypting S3 logs. Defaults to `false`.
  final pulumi.Input<bool>? encryptionDisabled;
  /// Name of the S3 bucket and the path prefix for S3 logs. Must be set if status is `ENABLED`,
  /// otherwise it must be empty.
  final pulumi.Input<String>? location;
  /// Current status of logs in S3 for a build project. Valid values: `ENABLED`, `DISABLED`. Defaults
  /// to `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [ProjectLogsConfigS3Logs].
  /// [bucketOwnerAccess] Specifies the bucket owner's access for objects that another account uploads to
  /// [encryptionDisabled] Whether to disable encrypting S3 logs. Defaults to `false`.
  /// [location] Name of the S3 bucket and the path prefix for S3 logs. Must be set if status is `ENABLED`,
  /// [status] Current status of logs in S3 for a build project. Valid values: `ENABLED`, `DISABLED`. Defaults
  ProjectLogsConfigS3Logs({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccess': ?bucketOwnerAccess,
      'encryptionDisabled': ?encryptionDisabled,
      'location': ?location,
      'status': ?status,
    };
  }

  factory ProjectLogsConfigS3Logs.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfigS3Logs(
      bucketOwnerAccess: (() { final guardedValue = map['bucketOwnerAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionDisabled: (() { final guardedValue = map['encryptionDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

