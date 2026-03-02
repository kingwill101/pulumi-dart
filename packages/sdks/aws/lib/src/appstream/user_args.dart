// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appstream_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_appstream_user_user_args_doc}
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

  /// Creates a new [UserArgs].
  /// [authenticationType] Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  /// [enabled] Whether the user in the user pool is enabled.
  /// [firstName] First name, or given name, of the user.
  /// [lastName] Last name, or surname, of the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sendEmailNotification] Send an email notification.
  /// [userName] Email address of the user.
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
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'enabled': ?enabled,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'region': ?region,
      'sendEmailNotification': ?sendEmailNotification,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      authenticationType: (map['authenticationType'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sendEmailNotification: map['sendEmailNotification'] == null ? null : (map['sendEmailNotification'] as bool).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

