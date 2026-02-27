// ignore_for_file: unused_element, unnecessary_cast

class ProjectLogsConfigS3Logs {
  /// Specifies the bucket owner's access for objects that another account uploads to
  /// their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these
  /// objects. This property allows you to give the bucket owner access to these objects. Valid values are `NONE`,
  /// `READ_ONLY`, and `FULL`. your CodeBuild service role must have the `s3:PutBucketAcl` permission. This permission
  /// allows CodeBuild to modify the access control list for the bucket.
  final String? bucketOwnerAccess;

  /// Whether to disable encrypting S3 logs. Defaults to `false`.
  final bool? encryptionDisabled;

  /// Name of the S3 bucket and the path prefix for S3 logs. Must be set if status is `ENABLED`,
  /// otherwise it must be empty.
  final String? location;

  /// Current status of logs in S3 for a build project. Valid values: `ENABLED`, `DISABLED`. Defaults
  /// to `DISABLED`.
  final String? status;

  ProjectLogsConfigS3Logs({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketOwnerAccessValue = bucketOwnerAccess;
    if (bucketOwnerAccessValue != null) {
      map['bucketOwnerAccess'] = bucketOwnerAccessValue;
    }
    final encryptionDisabledValue = encryptionDisabled;
    if (encryptionDisabledValue != null) {
      map['encryptionDisabled'] = encryptionDisabledValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory ProjectLogsConfigS3Logs.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfigS3Logs(
      bucketOwnerAccess: map['bucketOwnerAccess'] == null
          ? null
          : map['bucketOwnerAccess'] as String,
      encryptionDisabled: map['encryptionDisabled'] == null
          ? null
          : map['encryptionDisabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
