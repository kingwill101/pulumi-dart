// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_entitlement_principal_role_principal_identity_center.dart';

class EntitlementEntitlementPrincipalRolePrincipal {
  /// IAM Identity Center principal configuration. See `entitlement.principal_role.principal.identity_center` Block below.
  final pulumi.Input<EntitlementEntitlementPrincipalRolePrincipalIdentityCenter?>? identityCenter;

  /// Creates a new [EntitlementEntitlementPrincipalRolePrincipal].
  /// [identityCenter] IAM Identity Center principal configuration. See `entitlement.principal_role.principal.identity_center` Block below.
  const EntitlementEntitlementPrincipalRolePrincipal({
    this.identityCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenter': ?pulumi.Input.mapOptionalInputValue<EntitlementEntitlementPrincipalRolePrincipalIdentityCenter, Map<String, dynamic>>(identityCenter, (value) => value.toMap()),
    };
  }

  factory EntitlementEntitlementPrincipalRolePrincipal.fromMap(Map<String, dynamic> map) {
    return EntitlementEntitlementPrincipalRolePrincipal(
      identityCenter: (() { final guardedValue = map['identityCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementEntitlementPrincipalRolePrincipalIdentityCenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
