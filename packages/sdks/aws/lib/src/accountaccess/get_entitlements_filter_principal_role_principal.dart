// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_filter_principal_role_principal_identity_center.dart';

class GetEntitlementsFilterPrincipalRolePrincipal {
  /// IAM Identity Center principal filter criteria. See `filter.principal_role.principal.identity_center` Block below.
  final pulumi.Input<GetEntitlementsFilterPrincipalRolePrincipalIdentityCenter?>? identityCenter;

  /// Creates a new [GetEntitlementsFilterPrincipalRolePrincipal].
  /// [identityCenter] IAM Identity Center principal filter criteria. See `filter.principal_role.principal.identity_center` Block below.
  const GetEntitlementsFilterPrincipalRolePrincipal({
    this.identityCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenter': ?pulumi.Input.mapOptionalInputValue<GetEntitlementsFilterPrincipalRolePrincipalIdentityCenter, Map<String, dynamic>>(identityCenter, (value) => value.toMap()),
    };
  }

  factory GetEntitlementsFilterPrincipalRolePrincipal.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsFilterPrincipalRolePrincipal(
      identityCenter: (() { final guardedValue = map['identityCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEntitlementsFilterPrincipalRolePrincipalIdentityCenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
