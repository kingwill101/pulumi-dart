// ignore_for_file: unused_element, unnecessary_cast


/// System assigned managed identity properties
class RegistryEndpointSystemAssignedManagedIdentitySettingsResponse {
  /// Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  final String? audience;

  /// Creates a new [RegistryEndpointSystemAssignedManagedIdentitySettingsResponse].
  /// [audience] Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  RegistryEndpointSystemAssignedManagedIdentitySettingsResponse({
    this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
    };
  }

  factory RegistryEndpointSystemAssignedManagedIdentitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointSystemAssignedManagedIdentitySettingsResponse(
      audience: map['audience'] == null ? null : map['audience'] as String,
    );
  }
}

