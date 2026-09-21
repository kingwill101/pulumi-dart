// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_filter_principal_role_principal_identity_center.dart';

class EntitlementFilterPrincipalRolePrincipal {
  /// IAM Identity Center principal configuration. See `entitlement.principal_role.principal.identity_center` Block below.
  final pulumi.Input<EntitlementFilterPrincipalRolePrincipalIdentityCenter?>? identityCenter;

  /// Creates a new [EntitlementFilterPrincipalRolePrincipal].
  /// [identityCenter] IAM Identity Center principal configuration. See `entitlement.principal_role.principal.identity_center` Block below.
  const EntitlementFilterPrincipalRolePrincipal({
    this.identityCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenter': ?pulumi.Input.mapOptionalInputValue<EntitlementFilterPrincipalRolePrincipalIdentityCenter, Map<String, dynamic>>(identityCenter, (value) => value.toMap()),
    };
  }

  factory EntitlementFilterPrincipalRolePrincipal.fromMap(Map<String, dynamic> map) {
    return EntitlementFilterPrincipalRolePrincipal(
      identityCenter: (() { final guardedValue = map['identityCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementFilterPrincipalRolePrincipalIdentityCenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
