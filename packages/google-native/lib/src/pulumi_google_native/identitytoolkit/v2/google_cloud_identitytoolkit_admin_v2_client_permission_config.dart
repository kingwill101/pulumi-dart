// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_client_permissions.dart';

/// Options related to how clients making requests on behalf of a tenant should be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig {
  /// Configuration related to restricting a user's ability to affect their account.
  final GoogleCloudIdentitytoolkitAdminV2ClientPermissions? permissions;

  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig({
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

  factory GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig(
      permissions: map['permissions'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2ClientPermissions.fromMap(
              (map['permissions'] as Map).cast<String, dynamic>()),
    );
  }
}
