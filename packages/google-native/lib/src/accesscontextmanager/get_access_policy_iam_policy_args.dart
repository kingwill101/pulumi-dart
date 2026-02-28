// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_access_policy_iam_policy_args_doc}
/// Arguments for getAccessPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_access_policy_iam_policy_args_doc}
class GetAccessPolicyIamPolicyArgs {
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessPolicyIamPolicyArgs].
  /// [accessPolicyId] Required.
  GetAccessPolicyIamPolicyArgs({
    required String accessPolicyId,
  }) :
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
    };
  }

  factory GetAccessPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyIamPolicyArgs(
      accessPolicyId: map['accessPolicyId'] as String,
    );
  }
}

