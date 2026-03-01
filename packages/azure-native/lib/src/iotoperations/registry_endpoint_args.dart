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
  RegistryEndpointArgs({
    ExtendedLocation? extendedLocation,
    required String instanceName,
    RegistryEndpointProperties? properties,
    String? registryEndpointName,
    required String resourceGroupName,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<RegistryEndpointProperties>(properties),
      registryEndpointName = pulumi.Input.asOptionalInput<String>(registryEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] as String,
      properties: map['properties'] == null ? null : RegistryEndpointProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      registryEndpointName: map['registryEndpointName'] == null ? null : map['registryEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

