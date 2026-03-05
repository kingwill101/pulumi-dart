// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_get_experiment_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_chaos_get_experiment_args_doc}
class GetExperimentArgs {
  /// String that represents a Experiment resource name.
  final pulumi.Input<String> experimentName;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExperimentArgs].
  /// [experimentName] String that represents a Experiment resource name.
  /// [resourceGroupName] String that represents an Azure resource group.
  GetExperimentArgs({
    required this.experimentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentName': experimentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      experimentName: pulumi.Input.fromValue(map['experimentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

