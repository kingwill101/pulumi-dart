// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_action_traffic_mirror_config_mirror_group_config_server_group_tuple.dart';

class GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig {
  /// The destination server group to which requests are forwarded.
  final pulumi.Input<List<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>> serverGroupTuples;

  /// Creates a new [GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig].
  /// [serverGroupTuples] The destination server group to which requests are forwarded.
  GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig({
    required this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig(
      serverGroupTuples: (pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>(map['serverGroupTuples'], (value) => GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

