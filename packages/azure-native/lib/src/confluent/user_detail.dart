// ignore_for_file: unused_element, unnecessary_cast


/// Subscriber detail
class UserDetail {
  /// AAD email address
  final String? aadEmail;
  /// Email address
  final String emailAddress;
  /// First name
  final String? firstName;
  /// Last name
  final String? lastName;
  /// User principal name
  final String? userPrincipalName;

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
      aadEmail: map['aadEmail'] == null ? null : map['aadEmail'] as String,
      emailAddress: map['emailAddress'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      userPrincipalName: map['userPrincipalName'] == null ? null : map['userPrincipalName'] as String,
    );
  }
}

