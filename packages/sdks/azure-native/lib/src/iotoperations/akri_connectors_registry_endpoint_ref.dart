// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsRegistryEndpointRef properties.
class AkriConnectorsRegistryEndpointRef {
  /// The name of the registry endpoint.
  final String registryEndpointRef;
  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'RegistryEndpointRef'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorsRegistryEndpointRef].
  /// [registryEndpointRef] The name of the registry endpoint.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  AkriConnectorsRegistryEndpointRef({
    required this.registryEndpointRef,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryEndpointRef': registryEndpointRef,
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsRegistryEndpointRef.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsRegistryEndpointRef(
      registryEndpointRef: map['registryEndpointRef'] as String,
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

