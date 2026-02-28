// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_membership_iam_policy_gkehub_v1alpha_args_doc}
/// Arguments for getMembershipIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_membership_iam_policy_gkehub_v1alpha_args_doc}
class GetMembershipIamPolicyGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMembershipIamPolicyGkehubV1alphaArgs].
  /// [location] Required.
  /// [membershipId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMembershipIamPolicyGkehubV1alphaArgs({
    required String location,
    required String membershipId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipId'] = membershipId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMembershipIamPolicyGkehubV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetMembershipIamPolicyGkehubV1alphaArgs(
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
