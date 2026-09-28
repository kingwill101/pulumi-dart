// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_entitlement_entitlement_principal_role_principal_identity_center.dart';

class GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal {
  /// IAM Identity Center principal. See `entitlements.entitlement.principal_role.principal.identity_center` Block below.
  final pulumi.Input<List<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter>> identityCenters;

  /// Creates a new [GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal].
  /// [identityCenters] IAM Identity Center principal. See `entitlements.entitlement.principal_role.principal.identity_center` Block below.
  const GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal({
    required this.identityCenters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenters': pulumi.Input.mapInputValue<List<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter>, List<Map<String, dynamic>>>(identityCenters, (value) => pulumi.Input.encodeList<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsEntitlementEntitlementPrincipalRolePrincipal(
      identityCenters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter>(map['identityCenters']!, (value) => GetEntitlementsEntitlementEntitlementPrincipalRolePrincipalIdentityCenter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
