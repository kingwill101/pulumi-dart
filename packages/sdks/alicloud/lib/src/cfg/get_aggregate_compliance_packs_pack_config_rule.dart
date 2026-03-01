// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_pack_config_rule_config_rule_parameter.dart';

class GetAggregateCompliancePacksPackConfigRule {
  /// The ID of the rule.
  final String configRuleId;
  /// A list of parameter rules.
  final List<GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter> configRuleParameters;
  /// Managed Rule Identifier.
  final String managedRuleIdentifier;

  /// Creates a new [GetAggregateCompliancePacksPackConfigRule].
  /// [configRuleId] The ID of the rule.
  /// [configRuleParameters] A list of parameter rules.
  /// [managedRuleIdentifier] Managed Rule Identifier.
  GetAggregateCompliancePacksPackConfigRule({
    required this.configRuleId,
    required this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': configRuleId,
      'configRuleParameters': pulumi.Input.encodeList<GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter, Map<String, dynamic>>(configRuleParameters, (value) => value.toMap()),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory GetAggregateCompliancePacksPackConfigRule.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksPackConfigRule(
      configRuleId: map['configRuleId'] as String,
      configRuleParameters: pulumi.Input.decodeList<GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter>(map['configRuleParameters'], (value) => GetAggregateCompliancePacksPackConfigRuleConfigRuleParameter.fromMap((value as Map).cast<String, dynamic>())),
      managedRuleIdentifier: map['managedRuleIdentifier'] as String,
    );
  }
}

