// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthResponse {
  final String password;
  final String user;

  /// Creates a new [BasicAuthResponse].
  /// [password] Required.
  /// [user] Required.
  BasicAuthResponse({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory BasicAuthResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthResponse(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
