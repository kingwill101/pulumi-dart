// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_membership_iam_policy_gkehub_v1beta_args_doc}
/// Arguments for getMembershipIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_membership_iam_policy_gkehub_v1beta_args_doc}
class GetMembershipIamPolicyGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipIamPolicyGkehubV1betaArgs].
  /// [location] Required.
  /// [membershipId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMembershipIamPolicyGkehubV1betaArgs({
    required String location,
    required String membershipId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       membershipId = pulumi.Input.asInput<String>(membershipId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetMembershipIamPolicyGkehubV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMembershipIamPolicyGkehubV1betaArgs(
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
