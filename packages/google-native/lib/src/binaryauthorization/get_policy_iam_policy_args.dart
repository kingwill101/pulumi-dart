// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1_get_policy_iam_policy_args_doc}
/// Arguments for getPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_get_policy_iam_policy_args_doc}
class GetPolicyIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetPolicyIamPolicyArgs({int? optionsRequestedPolicyVersion, String? project})
    : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
        optionsRequestedPolicyVersion,
      ),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
