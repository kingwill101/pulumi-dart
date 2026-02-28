// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_get_environment_iam_policy_get_environment_iam_policy_args_doc}
/// Arguments for getEnvironmentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigee_get_environment_iam_policy_get_environment_iam_policy_args_doc}
class GetEnvironmentIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> envId;
  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> orgId;

  /// Creates a new [GetEnvironmentIamPolicyArgs].
  /// [envId] Used to find the parent resource to bind the IAM policy to
  /// [orgId] The Apigee Organization associated with the Apigee environment,
  GetEnvironmentIamPolicyArgs({
    required String envId,
    required String orgId,
  }) :
      envId = pulumi.Input.asInput<String>(envId),
      orgId = pulumi.Input.asInput<String>(orgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envId': envId,
      'orgId': orgId,
    };
  }

  factory GetEnvironmentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentIamPolicyArgs(
      envId: map['envId'] as String,
      orgId: map['orgId'] as String,
    );
  }
}

