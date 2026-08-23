// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'registry_endpoint_properties.dart';

/// {@template pulumi_iotoperations_registry_endpoint_args_doc}
/// The set of arguments for RegistryEndpoint.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_registry_endpoint_args_doc}
class RegistryEndpointArgs {
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<RegistryEndpointProperties>? properties;
  /// Name of RegistryEndpoint resource
  final pulumi.Input<String>? registryEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegistryEndpointArgs].
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [registryEndpointName] Name of RegistryEndpoint resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const RegistryEndpointArgs({
    this.extendedLocation,
    required this.instanceName,
    this.properties,
    this.registryEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RegistryEndpointProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registryEndpointName': ?registryEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegistryEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryEndpointProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryEndpointName: (() { final guardedValue = map['registryEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
