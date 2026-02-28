// ignore_for_file: unused_element, unnecessary_cast

class SecurityScanConfigAuthenticationGoogleAccount {
  /// The password of the Google account. The credential is stored encrypted
  /// in GCP.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String password;

  /// The user name of the Google account.
  final String username;

  /// Creates a new [SecurityScanConfigAuthenticationGoogleAccount].
  /// [password] The password of the Google account. The credential is stored encrypted
  /// [username] The user name of the Google account.
  SecurityScanConfigAuthenticationGoogleAccount({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory SecurityScanConfigAuthenticationGoogleAccount.fromMap(
      Map<String, dynamic> map) {
    return SecurityScanConfigAuthenticationGoogleAccount(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
