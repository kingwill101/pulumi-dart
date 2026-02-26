// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_admission_whitelist_pattern/policy_admission_whitelist_pattern.dart';
import '../policy_cluster_admission_rule/policy_cluster_admission_rule.dart';
import '../policy_default_admission_rule/policy_default_admission_rule.dart';

/// The set of arguments for Policy.
class PolicyArgs {
  /// A whitelist of image patterns to exclude from admission rules. If an
  /// image's name matches a whitelist pattern, the image's admission
  /// requests will always be permitted regardless of your admission rules.
  /// Structure is documented below.
  final Input<List<PolicyAdmissionWhitelistPattern>>?
      admissionWhitelistPatterns;

  /// Per-cluster admission rules. An admission rule specifies either that
  /// all container images used in a pod creation request must be attested
  /// to by one or more attestors, that all pod creations will be allowed,
  /// or that all pod creations will be denied. There can be at most one
  /// admission rule per cluster spec.
  ///
  /// Identifier format: `{{location}}.{{clusterId}}`.
  /// A location is either a compute zone (e.g. `us-central1-a`) or a region
  /// (e.g. `us-central1`).
  /// Structure is documented below.
  final Input<List<PolicyClusterAdmissionRule>>? clusterAdmissionRules;

  /// Default admission rule for a cluster without a per-cluster admission
  /// rule.
  /// Structure is documented below.
  final Input<PolicyDefaultAdmissionRule> defaultAdmissionRule;

  /// A descriptive comment.
  final Input<String>? description;

  /// Controls the evaluation of a Google-maintained global admission policy
  /// for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy.
  /// Possible values are: `ENABLE`, `DISABLE`.
  final Input<String>? globalPolicyEvaluationMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  PolicyArgs({
    this.admissionWhitelistPatterns,
    this.clusterAdmissionRules,
    required this.defaultAdmissionRule,
    this.description,
    this.globalPolicyEvaluationMode,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final admissionWhitelistPatternsValue = admissionWhitelistPatterns;
    if (admissionWhitelistPatternsValue != null) {
      map['admissionWhitelistPatterns'] = Input.mapOptionalInputValue<
              List<PolicyAdmissionWhitelistPattern>,
              List<Map<String, dynamic>>>(
          admissionWhitelistPatternsValue,
          (value) => Input.encodeList<PolicyAdmissionWhitelistPattern,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final clusterAdmissionRulesValue = clusterAdmissionRules;
    if (clusterAdmissionRulesValue != null) {
      map['clusterAdmissionRules'] = Input.mapOptionalInputValue<
              List<PolicyClusterAdmissionRule>, List<Map<String, dynamic>>>(
          clusterAdmissionRulesValue,
          (value) => Input.encodeList<PolicyClusterAdmissionRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['defaultAdmissionRule'] =
        Input.mapInputValue<PolicyDefaultAdmissionRule, Map<String, dynamic>>(
            defaultAdmissionRule, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final globalPolicyEvaluationModeValue = globalPolicyEvaluationMode;
    if (globalPolicyEvaluationModeValue != null) {
      map['globalPolicyEvaluationMode'] = globalPolicyEvaluationModeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      admissionWhitelistPatterns:
          Input.asOptionalInput<List<PolicyAdmissionWhitelistPattern>>(
              map['admissionWhitelistPatterns']),
      clusterAdmissionRules:
          Input.asOptionalInput<List<PolicyClusterAdmissionRule>>(
              map['clusterAdmissionRules']),
      defaultAdmissionRule: Input.asInput<PolicyDefaultAdmissionRule>(
          map['defaultAdmissionRule']),
      description: Input.asOptionalInput<String>(map['description']),
      globalPolicyEvaluationMode:
          Input.asOptionalInput<String>(map['globalPolicyEvaluationMode']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
