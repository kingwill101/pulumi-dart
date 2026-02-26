// ignore_for_file: unused_element, unnecessary_cast

class SecurityScanConfigAuthenticationCustomAccount {
  /// The login form URL of the website.
  final String loginUrl;

  /// The password of the custom account. The credential is stored encrypted
  /// in GCP.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String password;

  /// The user name of the custom account.
  final String username;

  SecurityScanConfigAuthenticationCustomAccount({
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

  factory SecurityScanConfigAuthenticationCustomAccount.fromMap(
      Map<String, dynamic> map) {
    return SecurityScanConfigAuthenticationCustomAccount(
      loginUrl: map['loginUrl'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
