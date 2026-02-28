// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v2beta_get_function_iam_policy_cloudfunctions_v2beta_args_doc}
/// Arguments for getFunctionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2beta_get_function_iam_policy_cloudfunctions_v2beta_args_doc}
class GetFunctionIamPolicyCloudfunctionsV2betaArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionIamPolicyCloudfunctionsV2betaArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFunctionIamPolicyCloudfunctionsV2betaArgs({
    required String functionId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : functionId = pulumi.Input.asInput<String>(functionId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionId'] = functionId;
    map['location'] = location;
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

  factory GetFunctionIamPolicyCloudfunctionsV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionIamPolicyCloudfunctionsV2betaArgs(
      functionId: map['functionId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
