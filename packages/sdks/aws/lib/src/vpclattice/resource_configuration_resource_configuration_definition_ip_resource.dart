// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConfigurationResourceConfigurationDefinitionIpResource {
  /// The IP Address of the Resource for this configuration.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionIpResource].
  /// [ipAddress] The IP Address of the Resource for this configuration.
  ResourceConfigurationResourceConfigurationDefinitionIpResource({
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinitionIpResource.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionIpResource(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}

