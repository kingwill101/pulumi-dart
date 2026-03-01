// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_featurestore_entitytype_iam_policy_get_ai_featurestore_entitytype_iam_policy_args_doc}
/// Arguments for getAiFeaturestoreEntitytypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_featurestore_entitytype_iam_policy_get_ai_featurestore_entitytype_iam_policy_args_doc}
class GetAiFeaturestoreEntitytypeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> entitytype;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featurestore;

  /// Creates a new [GetAiFeaturestoreEntitytypeIamPolicyArgs].
  /// [entitytype] Used to find the parent resource to bind the IAM policy to
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  GetAiFeaturestoreEntitytypeIamPolicyArgs({
    required String entitytype,
    required String featurestore,
  }) :
      entitytype = pulumi.Input.asInput<String>(entitytype),
      featurestore = pulumi.Input.asInput<String>(featurestore);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entitytype': entitytype,
      'featurestore': featurestore,
    };
  }

  factory GetAiFeaturestoreEntitytypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiFeaturestoreEntitytypeIamPolicyArgs(
      entitytype: map['entitytype'] as String,
      featurestore: map['featurestore'] as String,
    );
  }
}

