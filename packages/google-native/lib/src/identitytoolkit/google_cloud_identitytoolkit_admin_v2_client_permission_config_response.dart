// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_client_permissions_response.dart';

/// Options related to how clients making requests on behalf of a tenant should be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse {
  /// Configuration related to restricting a user's ability to affect their account.
  final GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse permissions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse].
  /// [permissions] Configuration related to restricting a user's ability to affect their account.
  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions.toMap(),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse(
      permissions: GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
    );
  }
}

