// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_solution_args_doc}
/// Arguments for getSolution.
/// {@endtemplate}
/// {@macro pulumi_edge_get_solution_args_doc}
class GetSolutionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String> solutionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [GetSolutionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [targetName] Name of the target
  GetSolutionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
    required pulumi.Output<String> targetName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName),
      targetName = pulumi.Input.asInput<String>(targetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'targetName': targetName,
    };
  }

  factory GetSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

