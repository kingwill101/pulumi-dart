// ignore_for_file: unused_element, unnecessary_cast

class UserPoolSmsConfiguration {
  /// External ID used in IAM role trust relationships. For more information about using external IDs, see [How to Use an External ID When Granting Access to Your AWS Resources to a Third Party](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html).
  final String externalId;

  /// ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.
  final String snsCallerArn;

  /// The AWS Region to use with Amazon SNS integration. You can choose the same Region as your user pool, or a supported Legacy Amazon SNS alternate Region. Amazon Cognito resources in the Asia Pacific (Seoul) AWS Region must use your Amazon SNS configuration in the Asia Pacific (Tokyo) Region. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html).
  final String? snsRegion;

  UserPoolSmsConfiguration({
    required this.externalId,
    required this.snsCallerArn,
    this.snsRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalId'] = externalId;
    map['snsCallerArn'] = snsCallerArn;
    final snsRegionValue = snsRegion;
    if (snsRegionValue != null) {
      map['snsRegion'] = snsRegionValue;
    }
    return map;
  }

  factory UserPoolSmsConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolSmsConfiguration(
      externalId: map['externalId'] as String,
      snsCallerArn: map['snsCallerArn'] as String,
      snsRegion: map['snsRegion'] == null ? null : map['snsRegion'] as String,
    );
  }
}
