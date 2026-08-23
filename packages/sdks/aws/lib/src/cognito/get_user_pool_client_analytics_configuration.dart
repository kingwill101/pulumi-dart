// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolClientAnalyticsConfiguration {
  /// (Optional) Application ARN for an AWS End User Messaging application. Conflicts with `externalId` and `roleArn`.
  final pulumi.Input<String> applicationArn;
  /// (Optional) Application ID for an AWS End User Messaging application.
  final pulumi.Input<String> applicationId;
  /// (Optional) ID for the Analytics Configuration. Conflicts with `applicationArn`.
  final pulumi.Input<String> externalId;
  /// (Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to AWS End User Messaging analytics. Conflicts with `applicationArn`.
  final pulumi.Input<String> roleArn;
  /// (Optional) If set to `true`, Amazon Cognito will include user data in the events it publishes to AWS End User Messaging analytics.
  final pulumi.Input<bool> userDataShared;

  /// Creates a new [GetUserPoolClientAnalyticsConfiguration].
  /// [applicationArn] (Optional) Application ARN for an AWS End User Messaging application. Conflicts with `externalId` and `roleArn`.
  /// [applicationId] (Optional) Application ID for an AWS End User Messaging application.
  /// [externalId] (Optional) ID for the Analytics Configuration. Conflicts with `applicationArn`.
  /// [roleArn] (Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to AWS End User Messaging analytics. Conflicts with `applicationArn`.
  /// [userDataShared] (Optional) If set to `true`, Amazon Cognito will include user data in the events it publishes to AWS End User Messaging analytics.
  const GetUserPoolClientAnalyticsConfiguration({
    required this.applicationArn,
    required this.applicationId,
    required this.externalId,
    required this.roleArn,
    required this.userDataShared,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'applicationId': applicationId,
      'externalId': externalId,
      'roleArn': roleArn,
      'userDataShared': userDataShared,
    };
  }

  factory GetUserPoolClientAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientAnalyticsConfiguration(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      externalId: pulumi.Input.fromValue(map['externalId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      userDataShared: pulumi.Input.fromValue(map['userDataShared'] as bool),
    );
  }
}
