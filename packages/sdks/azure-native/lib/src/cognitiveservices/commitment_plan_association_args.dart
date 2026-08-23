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
  const CommitmentPlanAssociationArgs({
    this.accountId,
    this.commitmentPlanAssociationName,
    required this.commitmentPlanName,
    required this.resourceGroupName,
    this.tags,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentPlanAssociationName: (() { final guardedValue = map['commitmentPlanAssociationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentPlanName: pulumi.Input.fromValue(map['commitmentPlanName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
