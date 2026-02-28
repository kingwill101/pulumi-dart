// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_endpoints_get_service_iam_policy_get_service_iam_policy_args_doc}
/// Arguments for getServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_endpoints_get_service_iam_policy_get_service_iam_policy_args_doc}
class GetServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceIamPolicyArgs].
  /// [serviceName] Used to find the parent resource to bind the IAM policy to
  GetServiceIamPolicyArgs({
    required String serviceName,
  }) : serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs(
      serviceName: map['serviceName'] as String,
    );
  }
}
