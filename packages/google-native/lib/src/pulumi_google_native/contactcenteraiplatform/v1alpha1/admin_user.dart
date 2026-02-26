// ignore_for_file: unused_element, unnecessary_cast

/// Message storing info about the first admin user. Next ID: 3
class AdminUser {
  /// Optional. Last/family name of the first admin user.
  final String? familyName;

  /// Optional. First/given name of the first admin user.
  final String? givenName;

  AdminUser({
    this.familyName,
    this.givenName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final familyNameValue = familyName;
    if (familyNameValue != null) {
      map['familyName'] = familyNameValue;
    }
    final givenNameValue = givenName;
    if (givenNameValue != null) {
      map['givenName'] = givenNameValue;
    }
    return map;
  }

  factory AdminUser.fromMap(Map<String, dynamic> map) {
    return AdminUser(
      familyName:
          map['familyName'] == null ? null : map['familyName'] as String,
      givenName: map['givenName'] == null ? null : map['givenName'] as String,
    );
  }
}
