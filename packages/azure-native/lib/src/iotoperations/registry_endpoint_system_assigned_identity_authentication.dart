// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_system_assigned_managed_identity_settings.dart';

/// System assigned identity authentication
class RegistryEndpointSystemAssignedIdentityAuthentication {
  /// The authentication method.
  /// Expected value is 'SystemAssignedManagedIdentity'.
  final String method;
  /// System assigned managed identity properties
  final RegistryEndpointSystemAssignedManagedIdentitySettings systemAssignedManagedIdentitySettings;

  /// Creates a new [RegistryEndpointSystemAssignedIdentityAuthentication].
  /// [method] The authentication method.
  /// [systemAssignedManagedIdentitySettings] System assigned managed identity properties
  RegistryEndpointSystemAssignedIdentityAuthentication({
    required this.method,
    required this.systemAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'systemAssignedManagedIdentitySettings': systemAssignedManagedIdentitySettings.toMap(),
    };
  }

  factory RegistryEndpointSystemAssignedIdentityAuthentication.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointSystemAssignedIdentityAuthentication(
      method: map['method'] as String,
      systemAssignedManagedIdentitySettings: RegistryEndpointSystemAssignedManagedIdentitySettings.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

