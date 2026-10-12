// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_filter_principal_role.dart';

class EntitlementFilter {
  /// Principal role entitlement configuration. See `entitlement.principal_role` Block below.
  final pulumi.Input<EntitlementFilterPrincipalRole?>? principalRole;

  /// Creates a new [EntitlementFilter].
  /// [principalRole] Principal role entitlement configuration. See `entitlement.principal_role` Block below.
  const EntitlementFilter({
    this.principalRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalRole': ?pulumi.Input.mapOptionalInputValue<EntitlementFilterPrincipalRole, Map<String, dynamic>>(principalRole, (value) => value.toMap()),
    };
  }

  factory EntitlementFilter.fromMap(Map<String, dynamic> map) {
    return EntitlementFilter(
      principalRole: (() { final guardedValue = map['principalRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementFilterPrincipalRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
