// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config_waf_base_config_rule_detail.dart';

class DefenseRuleConfigWafBaseConfig {
  /// The batch operation on rules. If this parameter is not empty, the RuleDetail parameter must be empty. Valid values:
  final String? ruleBatchOperationConfig;
  /// The configuration of the Web core protection rules to be modified. See `rule_detail` below.
  final List<DefenseRuleConfigWafBaseConfigRuleDetail>? ruleDetails;
  /// The type of the rule. Valid values:
  final String? ruleType;

  /// Creates a new [DefenseRuleConfigWafBaseConfig].
  /// [ruleBatchOperationConfig] The batch operation on rules. If this parameter is not empty, the RuleDetail parameter must be empty. Valid values:
  /// [ruleDetails] The configuration of the Web core protection rules to be modified. See `rule_detail` below.
  /// [ruleType] The type of the rule. Valid values:
  DefenseRuleConfigWafBaseConfig({
    this.ruleBatchOperationConfig,
    this.ruleDetails,
    this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleBatchOperationConfig': ?ruleBatchOperationConfig,
      'ruleDetails': ?ruleDetails == null ? null : pulumi.Input.encodeList<DefenseRuleConfigWafBaseConfigRuleDetail, Map<String, dynamic>>(ruleDetails!, (value) => value.toMap()),
      'ruleType': ?ruleType,
    };
  }

  factory DefenseRuleConfigWafBaseConfig.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigWafBaseConfig(
      ruleBatchOperationConfig: map['ruleBatchOperationConfig'] == null ? null : map['ruleBatchOperationConfig'] as String,
      ruleDetails: map['ruleDetails'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigWafBaseConfigRuleDetail>(map['ruleDetails'], (value) => DefenseRuleConfigWafBaseConfigRuleDetail.fromMap((value as Map).cast<String, dynamic>())),
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
    );
  }
}

