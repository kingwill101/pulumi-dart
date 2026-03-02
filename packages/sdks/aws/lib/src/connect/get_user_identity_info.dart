// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserIdentityInfo {
  /// The email address.
  final pulumi.Input<String> email;
  /// The first name.
  final pulumi.Input<String> firstName;
  /// The last name.
  final pulumi.Input<String> lastName;
  /// The secondary email address. If present, email notifications will be sent to this email address instead of the primary one.
  final pulumi.Input<String> secondaryEmail;

  /// Creates a new [GetUserIdentityInfo].
  /// [email] The email address.
  /// [firstName] The first name.
  /// [lastName] The last name.
  /// [secondaryEmail] The secondary email address. If present, email notifications will be sent to this email address instead of the primary one.
  GetUserIdentityInfo({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.secondaryEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'secondaryEmail': secondaryEmail,
    };
  }

  factory GetUserIdentityInfo.fromMap(Map<String, dynamic> map) {
    return GetUserIdentityInfo(
      email: (map['email'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      secondaryEmail: (map['secondaryEmail'] as String).input(),
    );
  }
}

