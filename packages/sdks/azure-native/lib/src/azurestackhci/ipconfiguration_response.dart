// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_properties_response.dart';

/// InterfaceIPConfiguration IPConfiguration in a network interface.
class IPConfigurationResponse {
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  final pulumi.Input<IPConfigurationPropertiesResponse?>? properties;

  /// Creates a new [IPConfigurationResponse].
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] InterfaceIPConfigurationPropertiesFormat properties of IP configuration.
  const IPConfigurationResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<IPConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory IPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
