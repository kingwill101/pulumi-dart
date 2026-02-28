// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_governance_rule_iam_policy_args_doc}
/// Arguments for getGovernanceRuleIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_governance_rule_iam_policy_args_doc}
class GetGovernanceRuleIamPolicyArgs {
  final pulumi.Input<String> governanceRuleId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGovernanceRuleIamPolicyArgs].
  /// [governanceRuleId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGovernanceRuleIamPolicyArgs({
    required String governanceRuleId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : governanceRuleId = pulumi.Input.asInput<String>(governanceRuleId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['governanceRuleId'] = governanceRuleId;
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

  factory GetGovernanceRuleIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGovernanceRuleIamPolicyArgs(
      governanceRuleId: map['governanceRuleId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
