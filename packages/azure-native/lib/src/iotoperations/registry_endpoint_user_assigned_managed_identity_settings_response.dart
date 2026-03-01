// ignore_for_file: unused_element, unnecessary_cast


/// User assigned managed identity properties
class RegistryEndpointUserAssignedManagedIdentitySettingsResponse {
  /// Client ID for the user-assigned managed identity.
  final String clientId;
  /// Resource identifier (application ID URI) of the resource, affixed with the .default suffix.
  final String? scope;
  /// Tenant ID.
  final String tenantId;

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
      clientId: map['clientId'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

