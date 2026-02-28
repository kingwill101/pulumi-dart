// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_config_iam_policy_args_doc}
/// Arguments for getConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_config_iam_policy_args_doc}
class GetConfigIamPolicyArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConfigIamPolicyArgs].
  /// [configId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConfigIamPolicyArgs({
    required String configId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : configId = pulumi.Input.asInput<String>(configId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
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

  factory GetConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigIamPolicyArgs(
      configId: map['configId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
