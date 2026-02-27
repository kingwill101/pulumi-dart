// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_policy_adaptive_protection_config/get_security_policy_adaptive_protection_config.dart';
import '../get_security_policy_advanced_options_config/get_security_policy_advanced_options_config.dart';
import '../get_security_policy_recaptcha_options_config/get_security_policy_recaptcha_options_config.dart';
import '../get_security_policy_rule/get_security_policy_rule.dart';

/// Result data returned by getSecurityPolicy.
class GetSecurityPolicyResult {
  final List<GetSecurityPolicyAdaptiveProtectionConfig>
      adaptiveProtectionConfigs;
  final List<GetSecurityPolicyAdvancedOptionsConfig> advancedOptionsConfigs;
  final String description;
  final Map<String, String> effectiveLabels;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String? name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetSecurityPolicyRecaptchaOptionsConfig> recaptchaOptionsConfigs;
  final List<GetSecurityPolicyRule> rules;
  final String? selfLink;
  final String type;

  GetSecurityPolicyResult({
    required this.adaptiveProtectionConfigs,
    required this.advancedOptionsConfigs,
    required this.description,
    required this.effectiveLabels,
    required this.fingerprint,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    this.name,
    this.project,
    required this.pulumiLabels,
    required this.recaptchaOptionsConfigs,
    required this.rules,
    this.selfLink,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adaptiveProtectionConfigs'] = pulumi.Input.encodeList<
            GetSecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(
        adaptiveProtectionConfigs, (value) => value.toMap());
    map['advancedOptionsConfigs'] = pulumi.Input.encodeList<
        GetSecurityPolicyAdvancedOptionsConfig,
        Map<String, dynamic>>(advancedOptionsConfigs, (value) => value.toMap());
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['recaptchaOptionsConfigs'] = pulumi.Input.encodeList<
            GetSecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(
        recaptchaOptionsConfigs, (value) => value.toMap());
    map['rules'] =
        pulumi.Input.encodeList<GetSecurityPolicyRule, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyResult(
      adaptiveProtectionConfigs:
          pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfig>(
              map['adaptiveProtectionConfigs'],
              (value) => GetSecurityPolicyAdaptiveProtectionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      advancedOptionsConfigs:
          pulumi.Input.decodeList<GetSecurityPolicyAdvancedOptionsConfig>(
              map['advancedOptionsConfigs'],
              (value) => GetSecurityPolicyAdvancedOptionsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      recaptchaOptionsConfigs:
          pulumi.Input.decodeList<GetSecurityPolicyRecaptchaOptionsConfig>(
              map['recaptchaOptionsConfigs'],
              (value) => GetSecurityPolicyRecaptchaOptionsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rules: pulumi.Input.decodeList<GetSecurityPolicyRule>(
          map['rules'],
          (value) => GetSecurityPolicyRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      type: map['type'] as String,
    );
  }
}
