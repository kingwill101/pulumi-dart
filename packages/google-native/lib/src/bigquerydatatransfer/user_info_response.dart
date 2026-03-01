// ignore_for_file: unused_element, unnecessary_cast

/// Information about a user.
class UserInfoResponse {
  /// E-mail address of the user.
  final String email;

  /// Creates a new [UserInfoResponse].
  /// [email] E-mail address of the user.
  UserInfoResponse({required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(email: map['email'] as String);
  }
}
