// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'instance_properties.dart';

/// {@template pulumi_edge_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_edge_instance_args_doc}
class InstanceArgs {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// Name of the instance
  final pulumi.Input<String>? instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<InstanceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String> solutionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [InstanceArgs].
  /// [extendedLocation] The complex type of the extended location.
  /// [instanceName] Name of the instance
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [targetName] Name of the target
  InstanceArgs({
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    pulumi.Output<String>? instanceName,
    pulumi.Output<InstanceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
    required pulumi.Output<String> targetName,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<InstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName),
      targetName = pulumi.Input.asInput<String>(targetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': ?instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<InstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'targetName': targetName,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<InstanceProperties>(InstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

