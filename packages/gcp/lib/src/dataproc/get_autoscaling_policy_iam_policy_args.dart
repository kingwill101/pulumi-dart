// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_autoscaling_policy_iam_policy_get_autoscaling_policy_iam_policy_args_doc}
/// Arguments for getAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_autoscaling_policy_iam_policy_get_autoscaling_policy_iam_policy_args_doc}
class GetAutoscalingPolicyIamPolicyArgs {
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutoscalingPolicyIamPolicyArgs].
  /// [location] The  location where the autoscaling policy should reside.
  /// [policyId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetAutoscalingPolicyIamPolicyArgs({
    String? location,
    required String policyId,
    String? project,
  }) : location = pulumi.Input.asOptionalInput<String>(location),
       policyId = pulumi.Input.asInput<String>(policyId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'policyId': policyId,
      'project': ?project,
    };
  }

  factory GetAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyIamPolicyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      policyId: map['policyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
