// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'solution_version_properties.dart';

/// {@template pulumi_edge_solution_version_args_doc}
/// The set of arguments for SolutionVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_solution_version_args_doc}
class SolutionVersionArgs {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SolutionVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String> solutionName;
  /// Name of the solution version
  final pulumi.Input<String>? solutionVersionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [SolutionVersionArgs].
  /// [extendedLocation] The complex type of the extended location.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [solutionVersionName] Name of the solution version
  /// [targetName] Name of the target
  SolutionVersionArgs({
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    pulumi.Output<SolutionVersionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
    pulumi.Output<String>? solutionVersionName,
    required pulumi.Output<String> targetName,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      properties = pulumi.Input.asOptionalInput<SolutionVersionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName),
      solutionVersionName = pulumi.Input.asOptionalInput<String>(solutionVersionName),
      targetName = pulumi.Input.asInput<String>(targetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'solutionVersionName': ?solutionVersionName,
      'targetName': targetName,
    };
  }

  factory SolutionVersionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionVersionArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : pulumi.Output.create<SolutionVersionProperties>(SolutionVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
      solutionVersionName: map['solutionVersionName'] == null ? null : pulumi.Output.create<String>(map['solutionVersionName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

