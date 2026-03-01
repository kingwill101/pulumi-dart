// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_condition_host_config.dart';
import 'get_forwarding_rules_forwarding_rule_rule_condition_path_config.dart';

class GetForwardingRulesForwardingRuleRuleCondition {
  /// Domain name configuration information.
  final List<GetForwardingRulesForwardingRuleRuleConditionHostConfig> hostConfigs;
  /// Path configuration information.
  final List<GetForwardingRulesForwardingRuleRuleConditionPathConfig> pathConfigs;
  /// Forwarding condition type.
  final String ruleConditionType;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleCondition].
  /// [hostConfigs] Domain name configuration information.
  /// [pathConfigs] Path configuration information.
  /// [ruleConditionType] Forwarding condition type.
  GetForwardingRulesForwardingRuleRuleCondition({
    required this.hostConfigs,
    required this.pathConfigs,
    required this.ruleConditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostConfigs': pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleConditionHostConfig, Map<String, dynamic>>(hostConfigs, (value) => value.toMap()),
      'pathConfigs': pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleConditionPathConfig, Map<String, dynamic>>(pathConfigs, (value) => value.toMap()),
      'ruleConditionType': ruleConditionType,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleCondition(
      hostConfigs: pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleConditionHostConfig>(map['hostConfigs'], (value) => GetForwardingRulesForwardingRuleRuleConditionHostConfig.fromMap((value as Map).cast<String, dynamic>())),
      pathConfigs: pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleConditionPathConfig>(map['pathConfigs'], (value) => GetForwardingRulesForwardingRuleRuleConditionPathConfig.fromMap((value as Map).cast<String, dynamic>())),
      ruleConditionType: map['ruleConditionType'] as String,
    );
  }
}

