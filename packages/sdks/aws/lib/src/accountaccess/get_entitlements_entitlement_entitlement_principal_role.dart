// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_entitlement_entitlement_principal_role_principal.dart';

class GetEntitlementsEntitlementEntitlementPrincipalRole {
  /// 12-digit AWS account ID for the target role.
  final pulumi.Input<String> accountId;
  /// Human-readable name of the target account.
  final pulumi.Input<String> accountName;
  /// IAM Identity Center principal granted access. See `entitlements.entitlement.principal_role.principal` Block below.
  final pulumi.Input<List<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal>> principals;
  /// Target IAM role ARN.
  final pulumi.Input<String> roleArn;

  /// Creates a new [GetEntitlementsEntitlementEntitlementPrincipalRole].
  /// [accountId] 12-digit AWS account ID for the target role.
  /// [accountName] Human-readable name of the target account.
  /// [principals] IAM Identity Center principal granted access. See `entitlements.entitlement.principal_role.principal` Block below.
  /// [roleArn] Target IAM role ARN.
  const GetEntitlementsEntitlementEntitlementPrincipalRole({
    required this.accountId,
    required this.accountName,
    required this.principals,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountName': accountName,
      'principals': pulumi.Input.mapInputValue<List<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
    };
  }

  factory GetEntitlementsEntitlementEntitlementPrincipalRole.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsEntitlementEntitlementPrincipalRole(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      principals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal>(map['principals']!, (value) => GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
