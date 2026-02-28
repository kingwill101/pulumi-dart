// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_policy_tag_iam_policy_get_policy_tag_iam_policy_args_doc}
/// Arguments for getPolicyTagIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_policy_tag_iam_policy_get_policy_tag_iam_policy_args_doc}
class GetPolicyTagIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> policyTag;

  /// Creates a new [GetPolicyTagIamPolicyArgs].
  /// [policyTag] Used to find the parent resource to bind the IAM policy to
  GetPolicyTagIamPolicyArgs({
    required String policyTag,
  }) : policyTag = pulumi.Input.asInput<String>(policyTag);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyTag'] = policyTag;
    return map;
  }

  factory GetPolicyTagIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagIamPolicyArgs(
      policyTag: map['policyTag'] as String,
    );
  }
}
