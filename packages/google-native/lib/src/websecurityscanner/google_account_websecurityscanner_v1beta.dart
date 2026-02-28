// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration that uses a Google account.
class GoogleAccountWebsecurityscannerV1beta {
  /// Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;

  /// The user name of the Google account.
  final String username;

  /// Creates a new [GoogleAccountWebsecurityscannerV1beta].
  /// [password] Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the Google account.
  GoogleAccountWebsecurityscannerV1beta({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory GoogleAccountWebsecurityscannerV1beta.fromMap(
      Map<String, dynamic> map) {
    return GoogleAccountWebsecurityscannerV1beta(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
