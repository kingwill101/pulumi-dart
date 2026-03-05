// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_action_traffic_mirror_config_mirror_group_config.dart';

class RuleRuleActionTrafficMirrorConfig {
  /// The Traffic is mirrored to the server group. See `mirror_group_config` below.
  final pulumi.Input<RuleRuleActionTrafficMirrorConfigMirrorGroupConfig>? mirrorGroupConfig;
  /// The Mirror target type.
  final pulumi.Input<String>? targetType;

  /// Creates a new [RuleRuleActionTrafficMirrorConfig].
  /// [mirrorGroupConfig] The Traffic is mirrored to the server group. See `mirror_group_config` below.
  /// [targetType] The Mirror target type.
  RuleRuleActionTrafficMirrorConfig({
    this.mirrorGroupConfig,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorGroupConfig': ?pulumi.Input.mapOptionalInputValue<RuleRuleActionTrafficMirrorConfigMirrorGroupConfig, Map<String, dynamic>>(mirrorGroupConfig, (value) => value.toMap()),
      'targetType': ?targetType,
    };
  }

  factory RuleRuleActionTrafficMirrorConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficMirrorConfig(
      mirrorGroupConfig: (() { final guardedValue = map['mirrorGroupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleRuleActionTrafficMirrorConfigMirrorGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

