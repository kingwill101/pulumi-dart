// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_hub_group_iam_policy_args_doc}
/// Arguments for getHubGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_hub_group_iam_policy_args_doc}
class GetHubGroupIamPolicyArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> hubId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHubGroupIamPolicyArgs].
  /// [groupId] Required.
  /// [hubId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetHubGroupIamPolicyArgs({
    required String groupId,
    required String hubId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : groupId = pulumi.Input.asInput<String>(groupId),
       hubId = pulumi.Input.asInput<String>(hubId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'hubId': hubId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetHubGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHubGroupIamPolicyArgs(
      groupId: map['groupId'] as String,
      hubId: map['hubId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
