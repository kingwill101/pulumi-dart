// ignore_for_file: unused_element, unnecessary_cast

import 'rule_rule_action_traffic_mirror_config_mirror_group_config.dart';

class RuleRuleActionTrafficMirrorConfig {
  /// The Traffic is mirrored to the server group. See `mirror_group_config` below.
  final RuleRuleActionTrafficMirrorConfigMirrorGroupConfig? mirrorGroupConfig;
  /// The Mirror target type.
  final String? targetType;

  /// Creates a new [RuleRuleActionTrafficMirrorConfig].
  /// [mirrorGroupConfig] The Traffic is mirrored to the server group. See `mirror_group_config` below.
  /// [targetType] The Mirror target type.
  RuleRuleActionTrafficMirrorConfig({
    this.mirrorGroupConfig,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorGroupConfig': ?mirrorGroupConfig == null ? null : mirrorGroupConfig!.toMap(),
      'targetType': ?targetType,
    };
  }

  factory RuleRuleActionTrafficMirrorConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficMirrorConfig(
      mirrorGroupConfig: map['mirrorGroupConfig'] == null ? null : RuleRuleActionTrafficMirrorConfigMirrorGroupConfig.fromMap((map['mirrorGroupConfig'] as Map).cast<String, dynamic>()),
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

