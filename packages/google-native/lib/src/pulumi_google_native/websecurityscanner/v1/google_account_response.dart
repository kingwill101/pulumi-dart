// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration that uses a Google account.
class GoogleAccountResponse {
  /// Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;

  /// The user name of the Google account.
  final String username;

  GoogleAccountResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory GoogleAccountResponse.fromMap(Map<String, dynamic> map) {
    return GoogleAccountResponse(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
