// ignore_for_file: unused_element, unnecessary_cast

/// Information about a user.
class UserInfoResponse {
  /// E-mail address of the user.
  final String email;

  UserInfoResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(
      email: map['email'] as String,
    );
  }
}
