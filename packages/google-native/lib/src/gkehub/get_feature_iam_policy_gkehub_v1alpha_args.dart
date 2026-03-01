// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_feature_iam_policy_gkehub_v1alpha_args_doc}
/// Arguments for getFeatureIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_feature_iam_policy_gkehub_v1alpha_args_doc}
class GetFeatureIamPolicyGkehubV1alphaArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureIamPolicyGkehubV1alphaArgs].
  /// [featureId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFeatureIamPolicyGkehubV1alphaArgs({
    required String featureId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : featureId = pulumi.Input.asInput<String>(featureId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureId': featureId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFeatureIamPolicyGkehubV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureIamPolicyGkehubV1alphaArgs(
      featureId: map['featureId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
