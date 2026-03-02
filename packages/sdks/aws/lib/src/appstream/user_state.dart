// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// ARN of the appstream user.
  final pulumi.Input<String>? arn;
  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  final pulumi.Input<String>? authenticationType;
  /// Date and time, in UTC and extended RFC 3339 format, when the user was created.
  final pulumi.Input<String>? createdTime;
  /// Whether the user in the user pool is enabled.
  final pulumi.Input<bool>? enabled;
  /// First name, or given name, of the user.
  final pulumi.Input<String>? firstName;
  /// Last name, or surname, of the user.
  final pulumi.Input<String>? lastName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Send an email notification.
  final pulumi.Input<bool>? sendEmailNotification;
  /// Email address of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [arn] ARN of the appstream user.
  /// [authenticationType] Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the user was created.
  /// [enabled] Whether the user in the user pool is enabled.
  /// [firstName] First name, or given name, of the user.
  /// [lastName] Last name, or surname, of the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sendEmailNotification] Send an email notification.
  /// [userName] Email address of the user.
  UserState({
    this.arn,
    this.authenticationType,
    this.createdTime,
    this.enabled,
    this.firstName,
    this.lastName,
    this.region,
    this.sendEmailNotification,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authenticationType': ?authenticationType,
      'createdTime': ?createdTime,
      'enabled': ?enabled,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'region': ?region,
      'sendEmailNotification': ?sendEmailNotification,
      'userName': ?userName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sendEmailNotification: map['sendEmailNotification'] == null ? null : (map['sendEmailNotification'] as bool).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

