// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compliance_packs_pack_config_rule_config_rule_parameter.dart';

class GetCompliancePacksPackConfigRule {
  /// The ID of the rule.
  final String configRuleId;
  /// A list of parameter rules.
  final List<GetCompliancePacksPackConfigRuleConfigRuleParameter> configRuleParameters;
  /// Managed Rule Identifier.
  final String managedRuleIdentifier;

  /// Creates a new [GetCompliancePacksPackConfigRule].
  /// [configRuleId] The ID of the rule.
  /// [configRuleParameters] A list of parameter rules.
  /// [managedRuleIdentifier] Managed Rule Identifier.
  GetCompliancePacksPackConfigRule({
    required this.configRuleId,
    required this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': configRuleId,
      'configRuleParameters': pulumi.Input.encodeList<GetCompliancePacksPackConfigRuleConfigRuleParameter, Map<String, dynamic>>(configRuleParameters, (value) => value.toMap()),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory GetCompliancePacksPackConfigRule.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksPackConfigRule(
      configRuleId: map['configRuleId'] as String,
      configRuleParameters: pulumi.Input.decodeList<GetCompliancePacksPackConfigRuleConfigRuleParameter>(map['configRuleParameters'], (value) => GetCompliancePacksPackConfigRuleConfigRuleParameter.fromMap((value as Map).cast<String, dynamic>())),
      managedRuleIdentifier: map['managedRuleIdentifier'] as String,
    );
  }
}

