// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_filter_principal_role.dart';

class GetEntitlementsFilter {
  /// principal-to-role filter criteria for narrowing entitlement results. See `filter.principal_role` Block below.
  final pulumi.Input<GetEntitlementsFilterPrincipalRole?>? principalRole;

  /// Creates a new [GetEntitlementsFilter].
  /// [principalRole] principal-to-role filter criteria for narrowing entitlement results. See `filter.principal_role` Block below.
  const GetEntitlementsFilter({
    this.principalRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalRole': ?pulumi.Input.mapOptionalInputValue<GetEntitlementsFilterPrincipalRole, Map<String, dynamic>>(principalRole, (value) => value.toMap()),
    };
  }

  factory GetEntitlementsFilter.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsFilter(
      principalRole: (() { final guardedValue = map['principalRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEntitlementsFilterPrincipalRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
