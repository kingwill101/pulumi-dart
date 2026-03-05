// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_action_forward_group_config_server_group_tuple.dart';

class GetRulesRuleRuleActionForwardGroupConfig {
  /// The destination server group to which requests are forwarded.
  final pulumi.Input<List<GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple>> serverGroupTuples;

  /// Creates a new [GetRulesRuleRuleActionForwardGroupConfig].
  /// [serverGroupTuples] The destination server group to which requests are forwarded.
  GetRulesRuleRuleActionForwardGroupConfig({
    required this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesRuleRuleActionForwardGroupConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionForwardGroupConfig(
      serverGroupTuples: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple>(map['serverGroupTuples']!, (value) => GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

