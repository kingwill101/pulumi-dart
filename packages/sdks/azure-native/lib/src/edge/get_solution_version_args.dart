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
  GetSolutionVersionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
    required pulumi.Output<String> solutionVersionName,
    required pulumi.Output<String> targetName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName),
      solutionVersionName = pulumi.Input.asInput<String>(solutionVersionName),
      targetName = pulumi.Input.asInput<String>(targetName);

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
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
      solutionVersionName: pulumi.Output.create<String>(map['solutionVersionName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

