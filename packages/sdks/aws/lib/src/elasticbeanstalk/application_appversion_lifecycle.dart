// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAppversionLifecycle {
  /// Set to `true` to delete a version's source bundle from S3 when the application version is deleted.
  final pulumi.Input<bool>? deleteSourceFromS3;
  /// The number of days to retain an application version ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  final pulumi.Input<int>? maxAgeInDays;
  /// The maximum number of application versions to retain ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  final pulumi.Input<int>? maxCount;
  /// The ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  final pulumi.Input<String> serviceRole;

  /// Creates a new [ApplicationAppversionLifecycle].
  /// [deleteSourceFromS3] Set to `true` to delete a version's source bundle from S3 when the application version is deleted.
  /// [maxAgeInDays] The number of days to retain an application version ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  /// [maxCount] The maximum number of application versions to retain ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.).
  /// [serviceRole] The ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  const ApplicationAppversionLifecycle({
    this.deleteSourceFromS3,
    this.maxAgeInDays,
    this.maxCount,
    required this.serviceRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteSourceFromS3': ?deleteSourceFromS3,
      'maxAgeInDays': ?maxAgeInDays,
      'maxCount': ?maxCount,
      'serviceRole': serviceRole,
    };
  }

  factory ApplicationAppversionLifecycle.fromMap(Map<String, dynamic> map) {
    return ApplicationAppversionLifecycle(
      deleteSourceFromS3: (() { final guardedValue = map['deleteSourceFromS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAgeInDays: (() { final guardedValue = map['maxAgeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceRole: pulumi.Input.fromValue(map['serviceRole'] as String),
    );
  }
}

