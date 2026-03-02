// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolSmsConfiguration {
  /// External ID used in IAM role trust relationships. For more information about using external IDs, see [How to Use an External ID When Granting Access to Your AWS Resources to a Third Party](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html).
  final pulumi.Input<String> externalId;
  /// ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.
  final pulumi.Input<String> snsCallerArn;
  /// The AWS Region to use with Amazon SNS integration. You can choose the same Region as your user pool, or a supported Legacy Amazon SNS alternate Region. Amazon Cognito resources in the Asia Pacific (Seoul) AWS Region must use your Amazon SNS configuration in the Asia Pacific (Tokyo) Region. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html).
  final pulumi.Input<String>? snsRegion;

  /// Creates a new [UserPoolSmsConfiguration].
  /// [externalId] External ID used in IAM role trust relationships. For more information about using external IDs, see [How to Use an External ID When Granting Access to Your AWS Resources to a Third Party](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html).
  /// [snsCallerArn] ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.
  /// [snsRegion] The AWS Region to use with Amazon SNS integration. You can choose the same Region as your user pool, or a supported Legacy Amazon SNS alternate Region. Amazon Cognito resources in the Asia Pacific (Seoul) AWS Region must use your Amazon SNS configuration in the Asia Pacific (Tokyo) Region. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html).
  UserPoolSmsConfiguration({
    required this.externalId,
    required this.snsCallerArn,
    this.snsRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': externalId,
      'snsCallerArn': snsCallerArn,
      'snsRegion': ?snsRegion,
    };
  }

  factory UserPoolSmsConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolSmsConfiguration(
      externalId: (map['externalId'] as String).input(),
      snsCallerArn: (map['snsCallerArn'] as String).input(),
      snsRegion: map['snsRegion'] == null ? null : ((map['snsRegion'] as String).input()).input(),
    );
  }
}

