// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationAppversionLifecycle {
  /// Specifies whether delete a version's source bundle from S3 when the application version is deleted.
  final pulumi.Input<bool> deleteSourceFromS3;
  /// Number of days to retain an application version.
  final pulumi.Input<int> maxAgeInDays;
  /// Maximum number of application versions to retain.
  final pulumi.Input<int> maxCount;
  /// ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role.
  final pulumi.Input<String> serviceRole;

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
    return <String, dynamic>{
      'deleteSourceFromS3': deleteSourceFromS3,
      'maxAgeInDays': maxAgeInDays,
      'maxCount': maxCount,
      'serviceRole': serviceRole,
    };
  }

  factory GetApplicationAppversionLifecycle.fromMap(Map<String, dynamic> map) {
    return GetApplicationAppversionLifecycle(
      deleteSourceFromS3: (map['deleteSourceFromS3'] as bool).input(),
      maxAgeInDays: (map['maxAgeInDays'] as int).input(),
      maxCount: (map['maxCount'] as int).input(),
      serviceRole: (map['serviceRole'] as String).input(),
    );
  }
}

