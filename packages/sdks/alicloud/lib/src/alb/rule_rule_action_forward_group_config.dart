// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_action_forward_group_config_server_group_sticky_session.dart';
import 'rule_rule_action_forward_group_config_server_group_tuple.dart';

class RuleRuleActionForwardGroupConfig {
  /// The configuration of session persistence for server groups. See `server_group_sticky_session` below.
  final RuleRuleActionForwardGroupConfigServerGroupStickySession? serverGroupStickySession;
  /// The destination server group to which requests are forwarded. See `server_group_tuples` below.
  final List<RuleRuleActionForwardGroupConfigServerGroupTuple>? serverGroupTuples;

  /// Creates a new [RuleRuleActionForwardGroupConfig].
  /// [serverGroupStickySession] The configuration of session persistence for server groups. See `server_group_sticky_session` below.
  /// [serverGroupTuples] The destination server group to which requests are forwarded. See `server_group_tuples` below.
  RuleRuleActionForwardGroupConfig({
    this.serverGroupStickySession,
    this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupStickySession': ?serverGroupStickySession == null ? null : serverGroupStickySession!.toMap(),
      'serverGroupTuples': ?serverGroupTuples == null ? null : pulumi.Input.encodeList<RuleRuleActionForwardGroupConfigServerGroupTuple, Map<String, dynamic>>(serverGroupTuples!, (value) => value.toMap()),
    };
  }

  factory RuleRuleActionForwardGroupConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionForwardGroupConfig(
      serverGroupStickySession: map['serverGroupStickySession'] == null ? null : RuleRuleActionForwardGroupConfigServerGroupStickySession.fromMap((map['serverGroupStickySession'] as Map).cast<String, dynamic>()),
      serverGroupTuples: map['serverGroupTuples'] == null ? null : pulumi.Input.decodeList<RuleRuleActionForwardGroupConfigServerGroupTuple>(map['serverGroupTuples'], (value) => RuleRuleActionForwardGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

