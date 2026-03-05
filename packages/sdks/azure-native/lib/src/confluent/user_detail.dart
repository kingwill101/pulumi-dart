// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subscriber detail
class UserDetail {
  /// AAD email address
  final pulumi.Input<String>? aadEmail;
  /// Email address
  final pulumi.Input<String> emailAddress;
  /// First name
  final pulumi.Input<String>? firstName;
  /// Last name
  final pulumi.Input<String>? lastName;
  /// User principal name
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [UserDetail].
  /// [aadEmail] AAD email address
  /// [emailAddress] Email address
  /// [firstName] First name
  /// [lastName] Last name
  /// [userPrincipalName] User principal name
  UserDetail({
    this.aadEmail,
    required this.emailAddress,
    this.firstName,
    this.lastName,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadEmail': ?aadEmail,
      'emailAddress': emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory UserDetail.fromMap(Map<String, dynamic> map) {
    return UserDetail(
      aadEmail: (() { final guardedValue = map['aadEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

