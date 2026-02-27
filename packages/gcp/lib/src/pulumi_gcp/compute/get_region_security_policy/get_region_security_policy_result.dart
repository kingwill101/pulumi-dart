// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_security_policy_advanced_options_config/get_region_security_policy_advanced_options_config.dart';
import '../get_region_security_policy_ddos_protection_config/get_region_security_policy_ddos_protection_config.dart';
import '../get_region_security_policy_rule/get_region_security_policy_rule.dart';
import '../get_region_security_policy_user_defined_field/get_region_security_policy_user_defined_field.dart';

/// Result data returned by getRegionSecurityPolicy.
class GetRegionSecurityPolicyResult {
  final List<GetRegionSecurityPolicyAdvancedOptionsConfig>
      advancedOptionsConfigs;
  final List<GetRegionSecurityPolicyDdosProtectionConfig> ddosProtectionConfigs;
  final String description;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String policyId;
  final String? project;
  final String? region;
  final List<GetRegionSecurityPolicyRule> rules;
  final String selfLink;
  final String selfLinkWithPolicyId;
  final String type;
  final List<GetRegionSecurityPolicyUserDefinedField> userDefinedFields;

  GetRegionSecurityPolicyResult({
    required this.advancedOptionsConfigs,
    required this.ddosProtectionConfigs,
    required this.description,
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.policyId,
    this.project,
    this.region,
    required this.rules,
    required this.selfLink,
    required this.selfLinkWithPolicyId,
    required this.type,
    required this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedOptionsConfigs'] = pulumi.Input.encodeList<
        GetRegionSecurityPolicyAdvancedOptionsConfig,
        Map<String, dynamic>>(advancedOptionsConfigs, (value) => value.toMap());
    map['ddosProtectionConfigs'] = pulumi.Input.encodeList<
        GetRegionSecurityPolicyDdosProtectionConfig,
        Map<String, dynamic>>(ddosProtectionConfigs, (value) => value.toMap());
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['name'] = name;
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = pulumi.Input.encodeList<GetRegionSecurityPolicyRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['selfLinkWithPolicyId'] = selfLinkWithPolicyId;
    map['type'] = type;
    map['userDefinedFields'] = pulumi.Input.encodeList<
        GetRegionSecurityPolicyUserDefinedField,
        Map<String, dynamic>>(userDefinedFields, (value) => value.toMap());
    return map;
  }

  factory GetRegionSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyResult(
      advancedOptionsConfigs:
          pulumi.Input.decodeList<GetRegionSecurityPolicyAdvancedOptionsConfig>(
              map['advancedOptionsConfigs'],
              (value) => GetRegionSecurityPolicyAdvancedOptionsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ddosProtectionConfigs:
          pulumi.Input.decodeList<GetRegionSecurityPolicyDdosProtectionConfig>(
              map['ddosProtectionConfigs'],
              (value) => GetRegionSecurityPolicyDdosProtectionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policyId: map['policyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<GetRegionSecurityPolicyRule>(
          map['rules'],
          (value) => GetRegionSecurityPolicyRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      selfLinkWithPolicyId: map['selfLinkWithPolicyId'] as String,
      type: map['type'] as String,
      userDefinedFields:
          pulumi.Input.decodeList<GetRegionSecurityPolicyUserDefinedField>(
              map['userDefinedFields'],
              (value) => GetRegionSecurityPolicyUserDefinedField.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
