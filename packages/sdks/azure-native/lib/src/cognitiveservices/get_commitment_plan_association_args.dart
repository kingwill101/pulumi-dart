// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_commitment_plan_association_args_doc}
/// Arguments for getCommitmentPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_commitment_plan_association_args_doc}
class GetCommitmentPlanAssociationArgs {
  /// The name of the commitment plan association with the Cognitive Services Account
  final pulumi.Input<String> commitmentPlanAssociationName;
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String> commitmentPlanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommitmentPlanAssociationArgs].
  /// [commitmentPlanAssociationName] The name of the commitment plan association with the Cognitive Services Account
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommitmentPlanAssociationArgs({
    required pulumi.Output<String> commitmentPlanAssociationName,
    required pulumi.Output<String> commitmentPlanName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      commitmentPlanAssociationName = pulumi.Input.asInput<String>(commitmentPlanAssociationName),
      commitmentPlanName = pulumi.Input.asInput<String>(commitmentPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlanAssociationName': commitmentPlanAssociationName,
      'commitmentPlanName': commitmentPlanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommitmentPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetCommitmentPlanAssociationArgs(
      commitmentPlanAssociationName: pulumi.Output.create<String>(map['commitmentPlanAssociationName'] as String),
      commitmentPlanName: pulumi.Output.create<String>(map['commitmentPlanName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

