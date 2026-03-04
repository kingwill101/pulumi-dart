// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for user account that gets created on each on the nodes of a compute.
class UserAccountCredentials {
  /// Name of the administrator user account which can be used to SSH to nodes.
  final pulumi.Input<String> adminUserName;

  /// Password of the administrator user account.
  final pulumi.Input<String>? adminUserPassword;

  /// SSH public key of the administrator user account.
  final pulumi.Input<String>? adminUserSshPublicKey;

  /// Creates a new [UserAccountCredentials].
  /// [adminUserName] Name of the administrator user account which can be used to SSH to nodes.
  /// [adminUserPassword] Password of the administrator user account.
  /// [adminUserSshPublicKey] SSH public key of the administrator user account.
  UserAccountCredentials({
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

  factory UserAccountCredentials.fromMap(Map<String, dynamic> map) {
    return UserAccountCredentials(
      adminUserName: pulumi.Input.fromValue(map['adminUserName'] as String),
      adminUserPassword: (() {
        final guardedValue = map['adminUserPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminUserSshPublicKey: (() {
        final guardedValue = map['adminUserSshPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
