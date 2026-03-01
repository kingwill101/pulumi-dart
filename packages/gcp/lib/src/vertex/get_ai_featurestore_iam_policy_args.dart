// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_featurestore_iam_policy_get_ai_featurestore_iam_policy_args_doc}
/// Arguments for getAiFeaturestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_featurestore_iam_policy_get_ai_featurestore_iam_policy_args_doc}
class GetAiFeaturestoreIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featurestore;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the dataset. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAiFeaturestoreIamPolicyArgs].
  /// [featurestore] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  GetAiFeaturestoreIamPolicyArgs({
    required String featurestore,
    String? project,
    String? region,
  }) : featurestore = pulumi.Input.asInput<String>(featurestore),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestore': featurestore,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAiFeaturestoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiFeaturestoreIamPolicyArgs(
      featurestore: map['featurestore'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
