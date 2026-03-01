// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_get_peering_iam_policy_args_doc}
/// Arguments for getPeeringIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_get_peering_iam_policy_args_doc}
class GetPeeringIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringIamPolicyArgs({
    int? optionsRequestedPolicyVersion,
    required String peeringId,
    String? project,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       peeringId = pulumi.Input.asInput<String>(peeringId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      peeringId: map['peeringId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
