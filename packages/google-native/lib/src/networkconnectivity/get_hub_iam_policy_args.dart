// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_hub_iam_policy_args_doc}
/// Arguments for getHubIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_hub_iam_policy_args_doc}
class GetHubIamPolicyArgs {
  final pulumi.Input<String> hubId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHubIamPolicyArgs].
  /// [hubId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetHubIamPolicyArgs({
    required String hubId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : hubId = pulumi.Input.asInput<String>(hubId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hubId'] = hubId;
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

  factory GetHubIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHubIamPolicyArgs(
      hubId: map['hubId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
