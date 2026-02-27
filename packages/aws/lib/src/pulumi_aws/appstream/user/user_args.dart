// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for User.
class UserArgs {
  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  final pulumi.Input<String> authenticationType;

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
  final pulumi.Input<String> userName;

  UserArgs({
    required this.authenticationType,
    this.enabled,
    this.firstName,
    this.lastName,
    this.region,
    this.sendEmailNotification,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationType'] = authenticationType;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final firstNameValue = firstName;
    if (firstNameValue != null) {
      map['firstName'] = firstNameValue;
    }
    final lastNameValue = lastName;
    if (lastNameValue != null) {
      map['lastName'] = lastNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sendEmailNotificationValue = sendEmailNotification;
    if (sendEmailNotificationValue != null) {
      map['sendEmailNotification'] = sendEmailNotificationValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      authenticationType:
          pulumi.Input.asInput<String>(map['authenticationType']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      firstName: pulumi.Input.asOptionalInput<String>(map['firstName']),
      lastName: pulumi.Input.asOptionalInput<String>(map['lastName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sendEmailNotification:
          pulumi.Input.asOptionalInput<bool>(map['sendEmailNotification']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
