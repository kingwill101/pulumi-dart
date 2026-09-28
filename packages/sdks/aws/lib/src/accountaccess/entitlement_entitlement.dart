// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_entitlement_principal_role.dart';

class EntitlementEntitlement {
  /// Principal role entitlement configuration. See `entitlement.principal_role` Block below.
  final pulumi.Input<EntitlementEntitlementPrincipalRole?>? principalRole;

  /// Creates a new [EntitlementEntitlement].
  /// [principalRole] Principal role entitlement configuration. See `entitlement.principal_role` Block below.
  const EntitlementEntitlement({
    this.principalRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalRole': ?pulumi.Input.mapOptionalInputValue<EntitlementEntitlementPrincipalRole, Map<String, dynamic>>(principalRole, (value) => value.toMap()),
    };
  }

  factory EntitlementEntitlement.fromMap(Map<String, dynamic> map) {
    return EntitlementEntitlement(
      principalRole: (() { final guardedValue = map['principalRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementEntitlementPrincipalRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
