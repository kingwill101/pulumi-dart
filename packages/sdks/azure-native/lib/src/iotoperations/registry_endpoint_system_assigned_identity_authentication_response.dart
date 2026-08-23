// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_system_assigned_managed_identity_settings_response.dart';

/// System assigned identity authentication
class RegistryEndpointSystemAssignedIdentityAuthenticationResponse {
  /// The authentication method.
  /// Expected value is 'SystemAssignedManagedIdentity'.
  final pulumi.Input<String> method;
  /// System assigned managed identity properties
  final pulumi.Input<RegistryEndpointSystemAssignedManagedIdentitySettingsResponse> systemAssignedManagedIdentitySettings;

  /// Creates a new [RegistryEndpointSystemAssignedIdentityAuthenticationResponse].
  /// [method] The authentication method.
  /// [systemAssignedManagedIdentitySettings] System assigned managed identity properties
  const RegistryEndpointSystemAssignedIdentityAuthenticationResponse({
    required this.method,
    required this.systemAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'systemAssignedManagedIdentitySettings': pulumi.Input.mapInputValue<RegistryEndpointSystemAssignedManagedIdentitySettingsResponse, Map<String, dynamic>>(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointSystemAssignedIdentityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointSystemAssignedIdentityAuthenticationResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      systemAssignedManagedIdentitySettings: pulumi.Input.fromValue(RegistryEndpointSystemAssignedManagedIdentitySettingsResponse.fromMap((map['systemAssignedManagedIdentitySettings']! as Map).cast<String, dynamic>())),
    );
  }
}
