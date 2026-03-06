// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_action_forward_group_config_server_group_tuple.dart';

class GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig {
  /// Terminal node group configuration.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple>> serverGroupTuples;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig].
  /// [serverGroupTuples] Terminal node group configuration.
  const GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig({
    required this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig(
      serverGroupTuples: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple>(map['serverGroupTuples']!, (value) => GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

