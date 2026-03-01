// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_model_iam_policy_args_doc}
/// Arguments for getModelIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_model_iam_policy_args_doc}
class GetModelIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelIamPolicyArgs].
  /// [location] Required.
  /// [modelId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetModelIamPolicyArgs({
    required String location,
    required String modelId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       modelId = pulumi.Input.asInput<String>(modelId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'modelId': modelId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetModelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetModelIamPolicyArgs(
      location: map['location'] as String,
      modelId: map['modelId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
