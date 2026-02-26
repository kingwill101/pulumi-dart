// ignore_for_file: unused_element, unnecessary_cast

import '../config_client_permissions/config_client_permissions.dart';

class ConfigClient {
  /// (Output)
  /// API key that can be used when making requests for this project.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? apiKey;

  /// (Output)
  /// Firebase subdomain.
  final String? firebaseSubdomain;

  /// Configuration related to restricting a user's ability to affect their account.
  /// Structure is documented below.
  final ConfigClientPermissions? permissions;

  ConfigClient({
    this.apiKey,
    this.firebaseSubdomain,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue;
    }
    final firebaseSubdomainValue = firebaseSubdomain;
    if (firebaseSubdomainValue != null) {
      map['firebaseSubdomain'] = firebaseSubdomainValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue.toMap();
    }
    return map;
  }

  factory ConfigClient.fromMap(Map<String, dynamic> map) {
    return ConfigClient(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      firebaseSubdomain: map['firebaseSubdomain'] == null
          ? null
          : map['firebaseSubdomain'] as String,
      permissions: map['permissions'] == null
          ? null
          : ConfigClientPermissions.fromMap(
              (map['permissions'] as Map).cast<String, dynamic>()),
    );
  }
}
