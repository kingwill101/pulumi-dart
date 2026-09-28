// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_filter_principal_role_principal.dart';

class GetEntitlementsFilterPrincipalRole {
  /// AWS account ID to filter entitlements by.
  final pulumi.Input<String?>? accountId;
  /// principal to filter entitlements by. See `filter.principal_role.principal` Block below.
  final pulumi.Input<GetEntitlementsFilterPrincipalRolePrincipal?>? principal;
  /// IAM role ARN to filter entitlements by.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [GetEntitlementsFilterPrincipalRole].
  /// [accountId] AWS account ID to filter entitlements by.
  /// [principal] principal to filter entitlements by. See `filter.principal_role.principal` Block below.
  /// [roleArn] IAM role ARN to filter entitlements by.
  const GetEntitlementsFilterPrincipalRole({
    this.accountId,
    this.principal,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'principal': ?pulumi.Input.mapOptionalInputValue<GetEntitlementsFilterPrincipalRolePrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'roleArn': ?roleArn,
    };
  }

  factory GetEntitlementsFilterPrincipalRole.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsFilterPrincipalRole(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEntitlementsFilterPrincipalRolePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
