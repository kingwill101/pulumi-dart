// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserIdentityInfo {
  /// The email address. If you are using SAML for identity management and include this parameter, an error is returned. Note that updates to the `email` is supported. From the [UpdateUserIdentityInfo API documentation](https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateUserIdentityInfo.html) it is strongly recommended to limit who has the ability to invoke `UpdateUserIdentityInfo`. Someone with that ability can change the login credentials of other users by changing their email address. This poses a security risk to your organization. They can change the email address of a user to the attacker's email address, and then reset the password through email. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  final pulumi.Input<String>? email;

  /// The first name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? firstName;

  /// The last name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? lastName;

  /// The secondary email address. If present, email notifications will be sent to this email address instead of the primary one.
  final pulumi.Input<String>? secondaryEmail;

  /// Creates a new [UserIdentityInfo].
  /// [email] The email address. If you are using SAML for identity management and include this parameter, an error is returned. Note that updates to the `email` is supported. From the [UpdateUserIdentityInfo API documentation](https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateUserIdentityInfo.html) it is strongly recommended to limit who has the ability to invoke `UpdateUserIdentityInfo`. Someone with that ability can change the login credentials of other users by changing their email address. This poses a security risk to your organization. They can change the email address of a user to the attacker's email address, and then reset the password through email. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  /// [firstName] The first name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.
  /// [lastName] The last name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.
  /// [secondaryEmail] The secondary email address. If present, email notifications will be sent to this email address instead of the primary one.
  UserIdentityInfo({
    this.email,
    this.firstName,
    this.lastName,
    this.secondaryEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'secondaryEmail': ?secondaryEmail,
    };
  }

  factory UserIdentityInfo.fromMap(Map<String, dynamic> map) {
    return UserIdentityInfo(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firstName: (() {
        final guardedValue = map['firstName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastName: (() {
        final guardedValue = map['lastName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryEmail: (() {
        final guardedValue = map['secondaryEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
