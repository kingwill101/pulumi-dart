// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAppversionLifecycle {
  /// Set to `true` to delete a version's source bundle from S3 when the application version is deleted.
  final bool? deleteSourceFromS3;

  /// The number of days to retain an application version ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  final int? maxAgeInDays;

  /// The maximum number of application versions to retain ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  final int? maxCount;

  /// The ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  final String serviceRole;

  ApplicationAppversionLifecycle({
    this.deleteSourceFromS3,
    this.maxAgeInDays,
    this.maxCount,
    required this.serviceRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteSourceFromS3Value = deleteSourceFromS3;
    if (deleteSourceFromS3Value != null) {
      map['deleteSourceFromS3'] = deleteSourceFromS3Value;
    }
    final maxAgeInDaysValue = maxAgeInDays;
    if (maxAgeInDaysValue != null) {
      map['maxAgeInDays'] = maxAgeInDaysValue;
    }
    final maxCountValue = maxCount;
    if (maxCountValue != null) {
      map['maxCount'] = maxCountValue;
    }
    map['serviceRole'] = serviceRole;
    return map;
  }

  factory ApplicationAppversionLifecycle.fromMap(Map<String, dynamic> map) {
    return ApplicationAppversionLifecycle(
      deleteSourceFromS3: map['deleteSourceFromS3'] == null
          ? null
          : map['deleteSourceFromS3'] as bool,
      maxAgeInDays:
          map['maxAgeInDays'] == null ? null : map['maxAgeInDays'] as int,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      serviceRole: map['serviceRole'] as String,
    );
  }
}
