// ignore_for_file: unused_element, unnecessary_cast

/// Message storing info about the first admin user. Next ID: 3
class AdminUserResponse {
  /// Optional. Last/family name of the first admin user.
  final String familyName;

  /// Optional. First/given name of the first admin user.
  final String givenName;

  AdminUserResponse({
    required this.familyName,
    required this.givenName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['familyName'] = familyName;
    map['givenName'] = givenName;
    return map;
  }

  factory AdminUserResponse.fromMap(Map<String, dynamic> map) {
    return AdminUserResponse(
      familyName: map['familyName'] as String,
      givenName: map['givenName'] as String,
    );
  }
}
