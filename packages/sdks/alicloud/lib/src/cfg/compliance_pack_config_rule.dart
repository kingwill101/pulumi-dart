// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_pack_config_rule_config_rule_parameter.dart';

class CompliancePackConfigRule {
  /// A list of Config Rule Parameters. See `config_rule_parameters` below.
  final List<CompliancePackConfigRuleConfigRuleParameter>? configRuleParameters;
  /// The Managed Rule Identifier.
  final String managedRuleIdentifier;

  /// Creates a new [CompliancePackConfigRule].
  /// [configRuleParameters] A list of Config Rule Parameters. See `config_rule_parameters` below.
  /// [managedRuleIdentifier] The Managed Rule Identifier.
  CompliancePackConfigRule({
    this.configRuleParameters,
    required this.managedRuleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleParameters': ?configRuleParameters == null ? null : pulumi.Input.encodeList<CompliancePackConfigRuleConfigRuleParameter, Map<String, dynamic>>(configRuleParameters!, (value) => value.toMap()),
      'managedRuleIdentifier': managedRuleIdentifier,
    };
  }

  factory CompliancePackConfigRule.fromMap(Map<String, dynamic> map) {
    return CompliancePackConfigRule(
      configRuleParameters: map['configRuleParameters'] == null ? null : pulumi.Input.decodeList<CompliancePackConfigRuleConfigRuleParameter>(map['configRuleParameters'], (value) => CompliancePackConfigRuleConfigRuleParameter.fromMap((value as Map).cast<String, dynamic>())),
      managedRuleIdentifier: map['managedRuleIdentifier'] as String,
    );
  }
}

