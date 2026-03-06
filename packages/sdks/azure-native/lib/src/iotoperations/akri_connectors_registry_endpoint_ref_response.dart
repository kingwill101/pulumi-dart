// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsRegistryEndpointRef properties.
class AkriConnectorsRegistryEndpointRefResponse {
  /// The name of the registry endpoint.
  final pulumi.Input<String> registryEndpointRef;
  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'RegistryEndpointRef'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorsRegistryEndpointRefResponse].
  /// [registryEndpointRef] The name of the registry endpoint.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  const AkriConnectorsRegistryEndpointRefResponse({
    required this.registryEndpointRef,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryEndpointRef': registryEndpointRef,
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsRegistryEndpointRefResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsRegistryEndpointRefResponse(
      registryEndpointRef: pulumi.Input.fromValue(map['registryEndpointRef'] as String),
      registrySettingsType: pulumi.Input.fromValue(map['registrySettingsType'] as String),
    );
  }
}

