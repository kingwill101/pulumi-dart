// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedUserPoolClientAnalyticsConfiguration {
  /// Application ARN for an Amazon Pinpoint application. It conflicts with `external_id` and `role_arn`.
  final pulumi.Input<String>? applicationArn;
  /// Unique identifier for an Amazon Pinpoint application.
  final pulumi.Input<String>? applicationId;
  /// ID for the Analytics Configuration and conflicts with `application_arn`.
  final pulumi.Input<String>? externalId;
  /// ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. It conflicts with `application_arn`.
  final pulumi.Input<String>? roleArn;
  /// If `user_data_shared` is set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  final pulumi.Input<bool>? userDataShared;

  /// Creates a new [ManagedUserPoolClientAnalyticsConfiguration].
  /// [applicationArn] Application ARN for an Amazon Pinpoint application. It conflicts with `external_id` and `role_arn`.
  /// [applicationId] Unique identifier for an Amazon Pinpoint application.
  /// [externalId] ID for the Analytics Configuration and conflicts with `application_arn`.
  /// [roleArn] ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. It conflicts with `application_arn`.
  /// [userDataShared] If `user_data_shared` is set to `true`, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
  ManagedUserPoolClientAnalyticsConfiguration({
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

  factory ManagedUserPoolClientAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedUserPoolClientAnalyticsConfiguration(
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      userDataShared: map['userDataShared'] == null ? null : (map['userDataShared'] as bool).input(),
    );
  }
}

