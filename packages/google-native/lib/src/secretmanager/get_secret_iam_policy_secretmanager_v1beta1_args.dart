// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_v1beta1_get_secret_iam_policy_secretmanager_v1beta1_args_doc}
/// Arguments for getSecretIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1beta1_get_secret_iam_policy_secretmanager_v1beta1_args_doc}
class GetSecretIamPolicySecretmanagerV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  /// Creates a new [GetSecretIamPolicySecretmanagerV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [secretId] Required.
  GetSecretIamPolicySecretmanagerV1beta1Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String secretId,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretIamPolicySecretmanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSecretIamPolicySecretmanagerV1beta1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      secretId: map['secretId'] as String,
    );
  }
}
