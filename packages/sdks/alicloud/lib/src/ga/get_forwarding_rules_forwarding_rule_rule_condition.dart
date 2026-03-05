// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_condition_host_config.dart';
import 'get_forwarding_rules_forwarding_rule_rule_condition_path_config.dart';

class GetForwardingRulesForwardingRuleRuleCondition {
  /// Domain name configuration information.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleConditionHostConfig>> hostConfigs;
  /// Path configuration information.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleConditionPathConfig>> pathConfigs;
  /// Forwarding condition type.
  final pulumi.Input<String> ruleConditionType;

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
      'hostConfigs': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleConditionHostConfig>, List<Map<String, dynamic>>>(hostConfigs, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleConditionHostConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathConfigs': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleConditionPathConfig>, List<Map<String, dynamic>>>(pathConfigs, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleConditionPathConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditionType': ruleConditionType,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleCondition(
      hostConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleConditionHostConfig>(map['hostConfigs']!, (value) => GetForwardingRulesForwardingRuleRuleConditionHostConfig.fromMap((value as Map).cast<String, dynamic>()))),
      pathConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleConditionPathConfig>(map['pathConfigs']!, (value) => GetForwardingRulesForwardingRuleRuleConditionPathConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ruleConditionType: pulumi.Input.fromValue(map['ruleConditionType'] as String),
    );
  }
}

