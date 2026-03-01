// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_user_assigned_managed_identity_settings_response.dart';

/// User assigned identity authentication
class RegistryEndpointUserAssignedIdentityAuthenticationResponse {
  /// The authentication method.
  /// Expected value is 'UserAssignedManagedIdentity'.
  final String method;
  /// User assigned managed identity properties
  final RegistryEndpointUserAssignedManagedIdentitySettingsResponse userAssignedManagedIdentitySettings;

  /// Creates a new [RegistryEndpointUserAssignedIdentityAuthenticationResponse].
  /// [method] The authentication method.
  /// [userAssignedManagedIdentitySettings] User assigned managed identity properties
  RegistryEndpointUserAssignedIdentityAuthenticationResponse({
    required this.method,
    required this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'userAssignedManagedIdentitySettings': userAssignedManagedIdentitySettings.toMap(),
    };
  }

  factory RegistryEndpointUserAssignedIdentityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointUserAssignedIdentityAuthenticationResponse(
      method: map['method'] as String,
      userAssignedManagedIdentitySettings: RegistryEndpointUserAssignedManagedIdentitySettingsResponse.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

