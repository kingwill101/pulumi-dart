// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_v2_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_get_policy_args_doc}
class GetPolicyArgs {
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyArgs].
  /// [policyId] Required.
  /// [project] Optional.
  GetPolicyArgs({required String policyId, String? project})
    : policyId = pulumi.Input.asInput<String>(policyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policyId': policyId, 'project': ?project};
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      policyId: map['policyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
