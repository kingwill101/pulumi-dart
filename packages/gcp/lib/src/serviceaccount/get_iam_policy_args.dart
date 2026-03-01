// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_iam_policy_get_iam_policy_args_doc}
/// Arguments for getIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_iam_policy_get_iam_policy_args_doc}
class GetIamPolicyArgs {
  /// The fully-qualified name of the service account to apply policy to.
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [GetIamPolicyArgs].
  /// [serviceAccountId] The fully-qualified name of the service account to apply policy to.
  GetIamPolicyArgs({required String serviceAccountId})
    : serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAccountId': serviceAccountId};
  }

  factory GetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs(
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
