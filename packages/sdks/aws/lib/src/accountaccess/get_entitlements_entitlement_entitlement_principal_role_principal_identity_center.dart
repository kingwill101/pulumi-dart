// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter {
  /// IAM Identity Center group ID.
  final pulumi.Input<String> groupId;
  /// IAM Identity Center user ID.
  final pulumi.Input<String> userId;

  /// Creates a new [GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter].
  /// [groupId] IAM Identity Center group ID.
  /// [userId] IAM Identity Center user ID.
  const GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter({
    required this.groupId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'userId': userId,
    };
  }

  factory GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
