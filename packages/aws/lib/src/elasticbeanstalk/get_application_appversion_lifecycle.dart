// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAppversionLifecycle {
  /// Specifies whether delete a version's source bundle from S3 when the application version is deleted.
  final bool deleteSourceFromS3;

  /// Number of days to retain an application version.
  final int maxAgeInDays;

  /// Maximum number of application versions to retain.
  final int maxCount;

  /// ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  final String serviceRole;

  /// Creates a new [GetApplicationAppversionLifecycle].
  /// [deleteSourceFromS3] Specifies whether delete a version's source bundle from S3 when the application version is deleted.
  /// [maxAgeInDays] Number of days to retain an application version.
  /// [maxCount] Maximum number of application versions to retain.
  /// [serviceRole] ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  GetApplicationAppversionLifecycle({
    required this.deleteSourceFromS3,
    required this.maxAgeInDays,
    required this.maxCount,
    required this.serviceRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteSourceFromS3'] = deleteSourceFromS3;
    map['maxAgeInDays'] = maxAgeInDays;
    map['maxCount'] = maxCount;
    map['serviceRole'] = serviceRole;
    return map;
  }

  factory GetApplicationAppversionLifecycle.fromMap(Map<String, dynamic> map) {
    return GetApplicationAppversionLifecycle(
      deleteSourceFromS3: map['deleteSourceFromS3'] as bool,
      maxAgeInDays: map['maxAgeInDays'] as int,
      maxCount: map['maxCount'] as int,
      serviceRole: map['serviceRole'] as String,
    );
  }
}
