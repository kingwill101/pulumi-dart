// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolClientAnalyticsConfiguration {
  /// (Optional) Application ARN for an Amazon Pinpoint application. Conflicts with `external_id` and `role_arn`.
  final String applicationArn;

  /// (Optional) Application ID for an Amazon Pinpoint application.
  final String applicationId;

  /// (Optional) ID for the Analytics Configuration. Conflicts with `application_arn`.
  final String externalId;

  /// (Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with `application_arn`.
  final String roleArn;

  /// (Optional) If set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final bool userDataShared;

  /// Creates a new [GetUserPoolClientAnalyticsConfiguration].
  /// [applicationArn] (Optional) Application ARN for an Amazon Pinpoint application. Conflicts with `external_id` and `role_arn`.
  /// [applicationId] (Optional) Application ID for an Amazon Pinpoint application.
  /// [externalId] (Optional) ID for the Analytics Configuration. Conflicts with `application_arn`.
  /// [roleArn] (Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with `application_arn`.
  /// [userDataShared] (Optional) If set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  GetUserPoolClientAnalyticsConfiguration({
    required this.applicationArn,
    required this.applicationId,
    required this.externalId,
    required this.roleArn,
    required this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    map['applicationId'] = applicationId;
    map['externalId'] = externalId;
    map['roleArn'] = roleArn;
    map['userDataShared'] = userDataShared;
    return map;
  }

  factory GetUserPoolClientAnalyticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] as String,
      applicationId: map['applicationId'] as String,
      externalId: map['externalId'] as String,
      roleArn: map['roleArn'] as String,
      userDataShared: map['userDataShared'] as bool,
    );
  }
}
