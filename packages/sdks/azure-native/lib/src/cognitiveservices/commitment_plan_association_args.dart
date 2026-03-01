// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_commitment_plan_association_args_doc}
/// The set of arguments for CommitmentPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_commitment_plan_association_args_doc}
class CommitmentPlanAssociationArgs {
  /// The Azure resource id of the account.
  final pulumi.Input<String>? accountId;
  /// The name of the commitment plan association with the Cognitive Services Account
  final pulumi.Input<String>? commitmentPlanAssociationName;
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String> commitmentPlanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CommitmentPlanAssociationArgs].
  /// [accountId] The Azure resource id of the account.
  /// [commitmentPlanAssociationName] The name of the commitment plan association with the Cognitive Services Account
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CommitmentPlanAssociationArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? commitmentPlanAssociationName,
    required pulumi.Output<String> commitmentPlanName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      commitmentPlanAssociationName = pulumi.Input.asOptionalInput<String>(commitmentPlanAssociationName),
      commitmentPlanName = pulumi.Input.asInput<String>(commitmentPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'commitmentPlanAssociationName': ?commitmentPlanAssociationName,
      'commitmentPlanName': commitmentPlanName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CommitmentPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanAssociationArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      commitmentPlanAssociationName: map['commitmentPlanAssociationName'] == null ? null : pulumi.Output.create<String>(map['commitmentPlanAssociationName'] as String),
      commitmentPlanName: pulumi.Output.create<String>(map['commitmentPlanName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

