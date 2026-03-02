// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_compliance_pack_config_rule_config_rule_parameter.dart';

class AggregateCompliancePackConfigRule {
  /// A list of parameter rules. See `config_rule_parameters` below.
  final pulumi.Input<List<AggregateCompliancePackConfigRuleConfigRuleParameter>>? configRuleParameters;
  /// The Managed Rule Identifier.
  final pulumi.Input<String> managedRuleIdentifier;

  /// Creates a new [AggregateCompliancePackConfigRule].
  /// [configRuleParameters] A list of parameter rules. See `config_rule_parameters` below.
  /// [managedRuleIdentifier] The Managed Rule Identifier.
  AggregateCompliancePackConfigRule({
    this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleParameters': ?pulumi.Input.mapOptionalInputValue<List<AggregateCompliancePackConfigRuleConfigRuleParameter>, List<Map<String, dynamic>>>(configRuleParameters, (value) => pulumi.Input.encodeList<AggregateCompliancePackConfigRuleConfigRuleParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory AggregateCompliancePackConfigRule.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackConfigRule(
      configRuleParameters: map['configRuleParameters'] == null ? null : (pulumi.Input.decodeList<AggregateCompliancePackConfigRuleConfigRuleParameter>(map['configRuleParameters'], (value) => AggregateCompliancePackConfigRuleConfigRuleParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedRuleIdentifier: (map['managedRuleIdentifier'] as String).input(),
    );
  }
}

