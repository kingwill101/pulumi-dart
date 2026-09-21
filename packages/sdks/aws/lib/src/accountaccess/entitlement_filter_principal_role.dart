// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_filter_principal_role_principal.dart';

class EntitlementFilterPrincipalRole {
  final pulumi.Input<String?>? accountId;
  /// Principal configuration. See `entitlement.principal_role.principal` Block below.
  final pulumi.Input<EntitlementFilterPrincipalRolePrincipal?>? principal;
  /// ARN of the IAM role in the target AWS account that the principal is granted access to.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [EntitlementFilterPrincipalRole].
  /// [accountId] Optional.
  /// [principal] Principal configuration. See `entitlement.principal_role.principal` Block below.
  /// [roleArn] ARN of the IAM role in the target AWS account that the principal is granted access to.
  const EntitlementFilterPrincipalRole({
    this.accountId,
    this.principal,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'principal': ?pulumi.Input.mapOptionalInputValue<EntitlementFilterPrincipalRolePrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'roleArn': ?roleArn,
    };
  }

  factory EntitlementFilterPrincipalRole.fromMap(Map<String, dynamic> map) {
    return EntitlementFilterPrincipalRole(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementFilterPrincipalRolePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
