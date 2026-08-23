// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedUserPoolClientAnalyticsConfiguration {
  /// Application ARN for an AWS End User Messaging application. It conflicts with `externalId` and `roleArn`.
  final pulumi.Input<String>? applicationArn;
  /// Unique identifier for an AWS End User Messaging application.
  final pulumi.Input<String>? applicationId;
  /// ID for the Analytics Configuration and conflicts with `applicationArn`.
  final pulumi.Input<String>? externalId;
  /// ARN of an IAM role that authorizes Amazon Cognito to publish events to AWS End User Messaging analytics. It conflicts with `applicationArn`.
  final pulumi.Input<String>? roleArn;
  /// If `userDataShared` is set to `true`, Amazon Cognito will include user data in the events it publishes to AWS End User Messaging analytics.
  final pulumi.Input<bool>? userDataShared;

  /// Creates a new [ManagedUserPoolClientAnalyticsConfiguration].
  /// [applicationArn] Application ARN for an AWS End User Messaging application. It conflicts with `externalId` and `roleArn`.
  /// [applicationId] Unique identifier for an AWS End User Messaging application.
  /// [externalId] ID for the Analytics Configuration and conflicts with `applicationArn`.
  /// [roleArn] ARN of an IAM role that authorizes Amazon Cognito to publish events to AWS End User Messaging analytics. It conflicts with `applicationArn`.
  /// [userDataShared] If `userDataShared` is set to `true`, Amazon Cognito will include user data in the events it publishes to AWS End User Messaging analytics.
  const ManagedUserPoolClientAnalyticsConfiguration({
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
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataShared: (() { final guardedValue = map['userDataShared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
