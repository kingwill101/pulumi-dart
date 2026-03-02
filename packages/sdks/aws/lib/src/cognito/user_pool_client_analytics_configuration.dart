// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolClientAnalyticsConfiguration {
  /// Application ARN for an Amazon Pinpoint application. Conflicts with `external_id` and `role_arn`.
  final pulumi.Input<String>? applicationArn;
  /// Application ID for an Amazon Pinpoint application.
  final pulumi.Input<String>? applicationId;
  /// ID for the Analytics Configuration. Conflicts with `application_arn`.
  final pulumi.Input<String>? externalId;
  /// ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with `application_arn`.
  final pulumi.Input<String>? roleArn;
  /// If set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final pulumi.Input<bool>? userDataShared;

  /// Creates a new [UserPoolClientAnalyticsConfiguration].
  /// [applicationArn] Application ARN for an Amazon Pinpoint application. Conflicts with `external_id` and `role_arn`.
  /// [applicationId] Application ID for an Amazon Pinpoint application.
  /// [externalId] ID for the Analytics Configuration. Conflicts with `application_arn`.
  /// [roleArn] ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with `application_arn`.
  /// [userDataShared] If set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  UserPoolClientAnalyticsConfiguration({
    this.applicationArn,
    this.applicationId,
    this.externalId,
    this.roleArn,
    this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'applicationId': ?applicationId,
      'externalId': ?externalId,
      'roleArn': ?roleArn,
      'userDataShared': ?userDataShared,
    };
  }

  factory UserPoolClientAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      userDataShared: map['userDataShared'] == null ? null : (map['userDataShared'] as bool).input(),
    );
  }
}

