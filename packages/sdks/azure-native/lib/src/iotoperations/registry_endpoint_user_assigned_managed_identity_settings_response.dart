// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity properties
class RegistryEndpointUserAssignedManagedIdentitySettingsResponse {
  /// Client ID for the user-assigned managed identity.
  final pulumi.Input<String> clientId;
  /// Resource identifier (application ID URI) of the resource, affixed with the .default suffix.
  final pulumi.Input<String>? scope;
  /// Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [RegistryEndpointUserAssignedManagedIdentitySettingsResponse].
  /// [clientId] Client ID for the user-assigned managed identity.
  /// [scope] Resource identifier (application ID URI) of the resource, affixed with the .default suffix.
  /// [tenantId] Tenant ID.
  RegistryEndpointUserAssignedManagedIdentitySettingsResponse({
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

  factory RegistryEndpointUserAssignedManagedIdentitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointUserAssignedManagedIdentitySettingsResponse(
      clientId: (map['clientId'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

