// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration that uses a Google account.
class GoogleAccount2 {
  /// Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;

  /// The user name of the Google account.
  final String username;

  GoogleAccount2({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory GoogleAccount2.fromMap(Map<String, dynamic> map) {
    return GoogleAccount2(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
