// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsorchestrator_get_solution_args_doc}
/// Arguments for getSolution.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsorchestrator_get_solution_args_doc}
class GetSolutionArgs {
  /// Name of solution.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSolutionArgs].
  /// [name] Name of solution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSolutionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

