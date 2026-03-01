// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateHelmRegistryEndpointRef properties.
class AkriConnectorTemplateHelmRegistryEndpointRefResponse {
  /// The name of the registry endpoint.
  final String registryEndpointRef;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'RegistryEndpointRef'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmRegistryEndpointRefResponse].
  /// [registryEndpointRef] The name of the registry endpoint.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  AkriConnectorTemplateHelmRegistryEndpointRefResponse({
    required this.registryEndpointRef,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryEndpointRef': registryEndpointRef,
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmRegistryEndpointRefResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmRegistryEndpointRefResponse(
      registryEndpointRef: map['registryEndpointRef'] as String,
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

