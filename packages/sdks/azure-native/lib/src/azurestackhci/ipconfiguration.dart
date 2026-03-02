// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_properties.dart';

/// InterfaceIPConfiguration IPConfiguration in a network interface.
class IPConfiguration {
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  final pulumi.Input<IPConfigurationProperties>? properties;

  /// Creates a new [IPConfiguration].
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  IPConfiguration({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<IPConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory IPConfiguration.fromMap(Map<String, dynamic> map) {
    return IPConfiguration(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (IPConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

