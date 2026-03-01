// ignore_for_file: unused_element, unnecessary_cast

import 'ipconfiguration_properties_response.dart';

/// InterfaceIPConfiguration IPConfiguration in a network interface.
class IPConfigurationResponse {
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  final IPConfigurationPropertiesResponse? properties;

  /// Creates a new [IPConfigurationResponse].
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  IPConfigurationResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory IPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : IPConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

