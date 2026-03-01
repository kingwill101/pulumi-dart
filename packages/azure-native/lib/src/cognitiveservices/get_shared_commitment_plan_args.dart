// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_shared_commitment_plan_args_doc}
/// Arguments for getSharedCommitmentPlan.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_shared_commitment_plan_args_doc}
class GetSharedCommitmentPlanArgs {
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String> commitmentPlanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSharedCommitmentPlanArgs].
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSharedCommitmentPlanArgs({
    required String commitmentPlanName,
    required String resourceGroupName,
  }) :
      commitmentPlanName = pulumi.Input.asInput<String>(commitmentPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlanName': commitmentPlanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSharedCommitmentPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedCommitmentPlanArgs(
      commitmentPlanName: map['commitmentPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

