// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_solution_version_args_doc}
/// Arguments for getSolutionVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_get_solution_version_args_doc}
class GetSolutionVersionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String> solutionName;
  /// Name of the solution version
  final pulumi.Input<String> solutionVersionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [GetSolutionVersionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [solutionVersionName] Name of the solution version
  /// [targetName] Name of the target
  const GetSolutionVersionArgs({
    required this.resourceGroupName,
    required this.solutionName,
    required this.solutionVersionName,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'solutionVersionName': solutionVersionName,
      'targetName': targetName,
    };
  }

  factory GetSolutionVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionVersionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: pulumi.Input.fromValue(map['solutionName'] as String),
      solutionVersionName: pulumi.Input.fromValue(map['solutionVersionName'] as String),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
    );
  }
}
