// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1beta1_get_policy_iam_policy_binaryauthorization_v1beta1_args_doc}
/// Arguments for getPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1beta1_get_policy_iam_policy_binaryauthorization_v1beta1_args_doc}
class GetPolicyIamPolicyBinaryauthorizationV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyIamPolicyBinaryauthorizationV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetPolicyIamPolicyBinaryauthorizationV1beta1Args({
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetPolicyIamPolicyBinaryauthorizationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPolicyIamPolicyBinaryauthorizationV1beta1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
