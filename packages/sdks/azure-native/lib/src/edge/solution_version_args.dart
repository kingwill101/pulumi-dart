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
    this.extendedLocation,
    this.properties,
    required this.resourceGroupName,
    required this.solutionName,
    this.solutionVersionName,
    required this.targetName,
  });

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
      extendedLocation: map['extendedLocation'] == null ? null : (AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (SolutionVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      solutionName: (map['solutionName'] as String).input(),
      solutionVersionName: map['solutionVersionName'] == null ? null : (map['solutionVersionName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
    );
  }
}

