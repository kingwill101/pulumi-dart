// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1beta1_get_reusable_config_iam_policy_args_doc}
/// Arguments for getReusableConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1beta1_get_reusable_config_iam_policy_args_doc}
class GetReusableConfigIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reusableConfigId;

  /// Creates a new [GetReusableConfigIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [reusableConfigId] Required.
  GetReusableConfigIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String reusableConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        reusableConfigId = pulumi.Input.asInput<String>(reusableConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reusableConfigId'] = reusableConfigId;
    return map;
  }

  factory GetReusableConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetReusableConfigIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      reusableConfigId: map['reusableConfigId'] as String,
    );
  }
}
