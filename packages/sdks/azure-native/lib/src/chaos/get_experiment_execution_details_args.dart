// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_get_experiment_execution_details_args_doc}
/// Arguments for getExperimentExecutionDetails.
/// {@endtemplate}
/// {@macro pulumi_chaos_get_experiment_execution_details_args_doc}
class GetExperimentExecutionDetailsArgs {
  /// GUID that represents a Experiment execution detail.
  final pulumi.Input<String> executionId;
  /// String that represents a Experiment resource name.
  final pulumi.Input<String> experimentName;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExperimentExecutionDetailsArgs].
  /// [executionId] GUID that represents a Experiment execution detail.
  /// [experimentName] String that represents a Experiment resource name.
  /// [resourceGroupName] String that represents an Azure resource group.
  const GetExperimentExecutionDetailsArgs({
    required this.executionId,
    required this.experimentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'experimentName': experimentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExperimentExecutionDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentExecutionDetailsArgs(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      experimentName: pulumi.Input.fromValue(map['experimentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

