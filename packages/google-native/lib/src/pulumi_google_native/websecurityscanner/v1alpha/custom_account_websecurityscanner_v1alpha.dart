// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration that uses a custom account.
class CustomAccountWebsecurityscannerV1alpha {
  /// The login form URL of the website.
  final String loginUrl;

  /// Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;

  /// The user name of the custom account.
  final String username;

  CustomAccountWebsecurityscannerV1alpha({
    required this.loginUrl,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loginUrl'] = loginUrl;
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory CustomAccountWebsecurityscannerV1alpha.fromMap(
      Map<String, dynamic> map) {
    return CustomAccountWebsecurityscannerV1alpha(
      loginUrl: map['loginUrl'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
