// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_entitlement_entitlement_principal_role.dart';

class GetEntitlementsEntitlementEntitlement {
  /// Principal-role entitlement configuration. See `entitlements.entitlement.principal_role` Block below.
  final pulumi.Input<List<GetEntitlementsEntitlementEntitlementPrincipalRole>> principalRoles;

  /// Creates a new [GetEntitlementsEntitlementEntitlement].
  /// [principalRoles] Principal-role entitlement configuration. See `entitlements.entitlement.principal_role` Block below.
  const GetEntitlementsEntitlementEntitlement({
    required this.principalRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalRoles': pulumi.Input.mapInputValue<List<GetEntitlementsEntitlementEntitlementPrincipalRole>, List<Map<String, dynamic>>>(principalRoles, (value) => pulumi.Input.encodeList<GetEntitlementsEntitlementEntitlementPrincipalRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementsEntitlementEntitlement.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsEntitlementEntitlement(
      principalRoles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementsEntitlementEntitlementPrincipalRole>(map['principalRoles']!, (value) => GetEntitlementsEntitlementEntitlementPrincipalRole.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
