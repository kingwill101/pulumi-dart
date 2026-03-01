// ignore_for_file: unused_element, unnecessary_cast

class GetUserIdentityInfo {
  /// The email address.
  final String email;

  /// The first name.
  final String firstName;

  /// The last name.
  final String lastName;

  /// The secondary email address. If present, email notifications will be sent to this email address instead of the primary one.
  final String secondaryEmail;

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
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      secondaryEmail: map['secondaryEmail'] as String,
    );
  }
}
