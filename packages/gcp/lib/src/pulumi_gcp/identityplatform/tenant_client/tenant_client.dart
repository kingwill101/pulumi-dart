// ignore_for_file: unused_element, unnecessary_cast

import '../tenant_client_permissions/tenant_client_permissions.dart';

class TenantClient {
  /// Configuration related to restricting a user's ability to affect their account.
  /// Structure is documented below.
  final TenantClientPermissions? permissions;

  TenantClient({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue.toMap();
    }
    return map;
  }

  factory TenantClient.fromMap(Map<String, dynamic> map) {
    return TenantClient(
      permissions: map['permissions'] == null
          ? null
          : TenantClientPermissions.fromMap(
              (map['permissions'] as Map).cast<String, dynamic>()),
    );
  }
}
