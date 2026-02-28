// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigHttpCheckAuthInfo {
  /// The password to authenticate.
  final String? password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password to authenticate.
  final String? passwordWo;

  /// The password write-only version.
  final String? passwordWoVersion;

  /// The username to authenticate.
  final String username;

  /// Creates a new [UptimeCheckConfigHttpCheckAuthInfo].
  /// [password] The password to authenticate.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] The password write-only version.
  /// [username] The username to authenticate.
  UptimeCheckConfigHttpCheckAuthInfo({
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final passwordWoValue = passwordWo;
    if (passwordWoValue != null) {
      map['passwordWo'] = passwordWoValue;
    }
    final passwordWoVersionValue = passwordWoVersion;
    if (passwordWoVersionValue != null) {
      map['passwordWoVersion'] = passwordWoVersionValue;
    }
    map['username'] = username;
    return map;
  }

  factory UptimeCheckConfigHttpCheckAuthInfo.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckAuthInfo(
      password: map['password'] == null ? null : map['password'] as String,
      passwordWo:
          map['passwordWo'] == null ? null : map['passwordWo'] as String,
      passwordWoVersion: map['passwordWoVersion'] == null
          ? null
          : map['passwordWoVersion'] as String,
      username: map['username'] as String,
    );
  }
}
