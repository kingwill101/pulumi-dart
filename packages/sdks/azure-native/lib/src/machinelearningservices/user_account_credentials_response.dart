// ignore_for_file: unused_element, unnecessary_cast


/// Settings for user account that gets created on each on the nodes of a compute.
class UserAccountCredentialsResponse {
  /// Name of the administrator user account which can be used to SSH to nodes.
  final String adminUserName;
  /// Password of the administrator user account.
  final String? adminUserPassword;
  /// SSH public key of the administrator user account.
  final String? adminUserSshPublicKey;

  /// Creates a new [UserAccountCredentialsResponse].
  /// [adminUserName] Name of the administrator user account which can be used to SSH to nodes.
  /// [adminUserPassword] Password of the administrator user account.
  /// [adminUserSshPublicKey] SSH public key of the administrator user account.
  UserAccountCredentialsResponse({
    required this.adminUserName,
    this.adminUserPassword,
    this.adminUserSshPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserName': adminUserName,
      'adminUserPassword': ?adminUserPassword,
      'adminUserSshPublicKey': ?adminUserSshPublicKey,
    };
  }

  factory UserAccountCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UserAccountCredentialsResponse(
      adminUserName: map['adminUserName'] as String,
      adminUserPassword: map['adminUserPassword'] == null ? null : map['adminUserPassword'] as String,
      adminUserSshPublicKey: map['adminUserSshPublicKey'] == null ? null : map['adminUserSshPublicKey'] as String,
    );
  }
}

