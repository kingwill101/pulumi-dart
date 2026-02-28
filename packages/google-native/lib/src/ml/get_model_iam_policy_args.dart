// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_get_model_iam_policy_args_doc}
/// Arguments for getModelIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_get_model_iam_policy_args_doc}
class GetModelIamPolicyArgs {
  final pulumi.Input<String> modelId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelIamPolicyArgs].
  /// [modelId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetModelIamPolicyArgs({
    required String modelId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : modelId = pulumi.Input.asInput<String>(modelId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetModelIamPolicyArgs(
      modelId: map['modelId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
