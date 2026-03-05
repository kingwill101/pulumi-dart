// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity properties
class RegistryEndpointUserAssignedManagedIdentitySettings {
  /// Client ID for the user-assigned managed identity.
  final pulumi.Input<String> clientId;
  /// Resource identifier (application ID URI) of the resource, affixed with the .default suffix.
  final pulumi.Input<String>? scope;
  /// Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [RegistryEndpointUserAssignedManagedIdentitySettings].
  /// [clientId] Client ID for the user-assigned managed identity.
  /// [scope] Resource identifier (application ID URI) of the resource, affixed with the .default suffix.
  /// [tenantId] Tenant ID.
  RegistryEndpointUserAssignedManagedIdentitySettings({
    required this.clientId,
    this.scope,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'scope': ?scope,
      'tenantId': tenantId,
    };
  }

  factory RegistryEndpointUserAssignedManagedIdentitySettings.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointUserAssignedManagedIdentitySettings(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

