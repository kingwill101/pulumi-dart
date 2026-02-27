// ignore_for_file: unused_element, unnecessary_cast

class UserPoolClientAnalyticsConfiguration {
  /// Application ARN for an Amazon Pinpoint application. Conflicts with `external_id` and `role_arn`.
  final String? applicationArn;

  /// Application ID for an Amazon Pinpoint application.
  final String? applicationId;

  /// ID for the Analytics Configuration. Conflicts with `application_arn`.
  final String? externalId;

  /// ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with `application_arn`.
  final String? roleArn;

  /// If set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final bool? userDataShared;

  UserPoolClientAnalyticsConfiguration({
    this.applicationArn,
    this.applicationId,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationArnValue = applicationArn;
    if (applicationArnValue != null) {
      map['applicationArn'] = applicationArnValue;
    }
    final applicationIdValue = applicationId;
    if (applicationIdValue != null) {
      map['applicationId'] = applicationIdValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final userDataSharedValue = userDataShared;
    if (userDataSharedValue != null) {
      map['userDataShared'] = userDataSharedValue;
    }
    return map;
  }

  factory UserPoolClientAnalyticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return UserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] == null
          ? null
          : map['applicationArn'] as String,
      applicationId:
          map['applicationId'] == null ? null : map['applicationId'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      userDataShared:
          map['userDataShared'] == null ? null : map['userDataShared'] as bool,
    );
  }
}
