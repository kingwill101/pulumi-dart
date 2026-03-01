// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
/// The set of arguments for DeliveryPipelineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
class DeliveryPipelineIamPolicyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [DeliveryPipelineIamPolicyArgs].
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  DeliveryPipelineIamPolicyArgs({
    String? location,
    String? name,
    required String policyData,
    String? project,
  }) : location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       policyData = pulumi.Input.asInput<String>(policyData),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory DeliveryPipelineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamPolicyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
