// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_endpoints_get_service_consumers_iam_policy_get_service_consumers_iam_policy_args_doc}
/// Arguments for getServiceConsumersIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_endpoints_get_service_consumers_iam_policy_get_service_consumers_iam_policy_args_doc}
class GetServiceConsumersIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> consumerProject;
  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceConsumersIamPolicyArgs].
  /// [consumerProject] Used to find the parent resource to bind the IAM policy to
  /// [serviceName] The name of the service. Used to find the parent resource to bind the IAM policy to
  GetServiceConsumersIamPolicyArgs({
    required String consumerProject,
    required String serviceName,
  }) :
      consumerProject = pulumi.Input.asInput<String>(consumerProject),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerProject': consumerProject,
      'serviceName': serviceName,
    };
  }

  factory GetServiceConsumersIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConsumersIamPolicyArgs(
      consumerProject: map['consumerProject'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

