// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateHelmRegistryEndpointRef properties.
class AkriConnectorTemplateHelmRegistryEndpointRef {
  /// The name of the registry endpoint.
  final pulumi.Input<String> registryEndpointRef;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'RegistryEndpointRef'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmRegistryEndpointRef].
  /// [registryEndpointRef] The name of the registry endpoint.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  AkriConnectorTemplateHelmRegistryEndpointRef({
    required this.registryEndpointRef,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryEndpointRef': registryEndpointRef,
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmRegistryEndpointRef.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmRegistryEndpointRef(
      registryEndpointRef: pulumi.Input.fromValue(map['registryEndpointRef'] as String),
      registrySettingsType: pulumi.Input.fromValue(map['registrySettingsType'] as String),
    );
  }
}

