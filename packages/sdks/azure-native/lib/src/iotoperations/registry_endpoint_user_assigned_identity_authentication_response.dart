// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_user_assigned_managed_identity_settings_response.dart';

/// User assigned identity authentication
class RegistryEndpointUserAssignedIdentityAuthenticationResponse {
  /// The authentication method.
  /// Expected value is 'UserAssignedManagedIdentity'.
  final pulumi.Input<String> method;
  /// User assigned managed identity properties
  final pulumi.Input<RegistryEndpointUserAssignedManagedIdentitySettingsResponse> userAssignedManagedIdentitySettings;

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
      'userAssignedManagedIdentitySettings': pulumi.Input.mapInputValue<RegistryEndpointUserAssignedManagedIdentitySettingsResponse, Map<String, dynamic>>(userAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointUserAssignedIdentityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointUserAssignedIdentityAuthenticationResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      userAssignedManagedIdentitySettings: pulumi.Input.fromValue(RegistryEndpointUserAssignedManagedIdentitySettingsResponse.fromMap((map['userAssignedManagedIdentitySettings']! as Map).cast<String, dynamic>())),
    );
  }
}

