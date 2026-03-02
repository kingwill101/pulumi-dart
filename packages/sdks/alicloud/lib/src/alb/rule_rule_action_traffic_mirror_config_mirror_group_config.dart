// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_action_traffic_mirror_config_mirror_group_config_server_group_tuple.dart';

class RuleRuleActionTrafficMirrorConfigMirrorGroupConfig {
  /// The destination server group to which requests are forwarded. See `server_group_tuples` below.
  final pulumi.Input<List<RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>>? serverGroupTuples;

  /// Creates a new [RuleRuleActionTrafficMirrorConfigMirrorGroupConfig].
  /// [serverGroupTuples] The destination server group to which requests are forwarded. See `server_group_tuples` below.
  RuleRuleActionTrafficMirrorConfigMirrorGroupConfig({
    this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': ?pulumi.Input.mapOptionalInputValue<List<RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleRuleActionTrafficMirrorConfigMirrorGroupConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficMirrorConfigMirrorGroupConfig(
      serverGroupTuples: map['serverGroupTuples'] == null ? null : (pulumi.Input.decodeList<RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple>(map['serverGroupTuples']!, (value) => RuleRuleActionTrafficMirrorConfigMirrorGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

