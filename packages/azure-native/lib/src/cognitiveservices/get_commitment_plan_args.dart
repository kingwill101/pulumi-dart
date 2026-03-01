// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_commitment_plan_args_doc}
/// Arguments for getCommitmentPlan.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_commitment_plan_args_doc}
class GetCommitmentPlanArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String> commitmentPlanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommitmentPlanArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommitmentPlanArgs({
    required String accountName,
    required String commitmentPlanName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      commitmentPlanName = pulumi.Input.asInput<String>(commitmentPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'commitmentPlanName': commitmentPlanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommitmentPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetCommitmentPlanArgs(
      accountName: map['accountName'] as String,
      commitmentPlanName: map['commitmentPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

