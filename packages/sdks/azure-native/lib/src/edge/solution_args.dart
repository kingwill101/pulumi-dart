// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_edge_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_edge_solution_args_doc}
class SolutionArgs {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String>? solutionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [SolutionArgs].
  /// [extendedLocation] The complex type of the extended location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [targetName] Name of the target
  const SolutionArgs({
    this.extendedLocation,
    required this.resourceGroupName,
    this.solutionName,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': ?solutionName,
      'targetName': targetName,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: (() { final guardedValue = map['solutionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
    );
  }
}
