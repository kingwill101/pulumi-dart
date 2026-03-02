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
      aadEmail: map['aadEmail'] == null ? null : (map['aadEmail'] as String).input(),
      emailAddress: (map['emailAddress'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      userPrincipalName: map['userPrincipalName'] == null ? null : (map['userPrincipalName'] as String).input(),
    );
  }
}

