// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_entitlement_principal_role_principal.dart';

class EntitlementEntitlementPrincipalRole {
  /// Target AWS account ID.
  final pulumi.Input<String?>? accountId;
  /// Target AWS account name.
  final pulumi.Input<String?>? accountName;
  /// Principal configuration. See `entitlement.principal_role.principal` Block below.
  final pulumi.Input<EntitlementEntitlementPrincipalRolePrincipal> principal;
  /// ARN of the IAM role in the target AWS account that the principal is granted access to.
  final pulumi.Input<String> roleArn;

  /// Creates a new [EntitlementEntitlementPrincipalRole].
  /// [accountId] Target AWS account ID.
  /// [accountName] Target AWS account name.
  /// [principal] Principal configuration. See `entitlement.principal_role.principal` Block below.
  /// [roleArn] ARN of the IAM role in the target AWS account that the principal is granted access to.
  const EntitlementEntitlementPrincipalRole({
    this.accountId,
    this.accountName,
    required this.principal,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'principal': pulumi.Input.mapInputValue<EntitlementEntitlementPrincipalRolePrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'roleArn': roleArn,
    };
  }

  factory EntitlementEntitlementPrincipalRole.fromMap(Map<String, dynamic> map) {
    return EntitlementEntitlementPrincipalRole(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(EntitlementEntitlementPrincipalRolePrincipal.fromMap((map['principal']! as Map).cast<String, dynamic>())),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
