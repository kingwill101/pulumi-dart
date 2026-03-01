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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authenticationType,
    pulumi.Output<String>? createdTime,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? firstName,
    pulumi.Output<String>? lastName,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? sendEmailNotification,
    pulumi.Output<String>? userName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      firstName = pulumi.Input.asOptionalInput<String>(firstName),
      lastName = pulumi.Input.asOptionalInput<String>(lastName),
      region = pulumi.Input.asOptionalInput<String>(region),
      sendEmailNotification = pulumi.Input.asOptionalInput<bool>(sendEmailNotification),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationType: map['authenticationType'] == null ? null : pulumi.Output.create<String>(map['authenticationType'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      firstName: map['firstName'] == null ? null : pulumi.Output.create<String>(map['firstName'] as String),
      lastName: map['lastName'] == null ? null : pulumi.Output.create<String>(map['lastName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sendEmailNotification: map['sendEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['sendEmailNotification'] as bool),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

