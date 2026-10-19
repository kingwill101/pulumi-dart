// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntitlementFilterPrincipalRolePrincipalIdentityCenter {
  /// IAM Identity Center group ID.
  final pulumi.Input<String?>? groupId;
  /// IAM Identity Center user ID.
  final pulumi.Input<String?>? userId;

  /// Creates a new [EntitlementFilterPrincipalRolePrincipalIdentityCenter].
  /// [groupId] IAM Identity Center group ID.
  /// [userId] IAM Identity Center user ID.
  const EntitlementFilterPrincipalRolePrincipalIdentityCenter({
    this.groupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory EntitlementFilterPrincipalRolePrincipalIdentityCenter.fromMap(Map<String, dynamic> map) {
    return EntitlementFilterPrincipalRolePrincipalIdentityCenter(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
