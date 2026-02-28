// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_get_policy_args_doc}
class GetPolicyArgs {
  final pulumi.Input<String> platformId;
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyArgs].
  /// [platformId] Required.
  /// [policyId] Required.
  /// [project] Optional.
  GetPolicyArgs({
    required String platformId,
    required String policyId,
    String? project,
  }) :
      platformId = pulumi.Input.asInput<String>(platformId),
      policyId = pulumi.Input.asInput<String>(policyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platformId': platformId,
      'policyId': policyId,
      'project': ?project,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      platformId: map['platformId'] as String,
      policyId: map['policyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

