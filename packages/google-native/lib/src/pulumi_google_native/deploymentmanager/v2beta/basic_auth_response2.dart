// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthResponse2 {
  final String password;
  final String user;

  BasicAuthResponse2({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory BasicAuthResponse2.fromMap(Map<String, dynamic> map) {
    return BasicAuthResponse2(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
