// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_registry_endpoint_args_doc}
/// Arguments for getRegistryEndpoint.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_registry_endpoint_args_doc}
class GetRegistryEndpointArgs {
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// Name of RegistryEndpoint resource
  final pulumi.Input<String> registryEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryEndpointArgs].
  /// [instanceName] Name of instance.
  /// [registryEndpointName] Name of RegistryEndpoint resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryEndpointArgs({
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> registryEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      registryEndpointName = pulumi.Input.asInput<String>(registryEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'registryEndpointName': registryEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEndpointArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      registryEndpointName: pulumi.Output.create<String>(map['registryEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

