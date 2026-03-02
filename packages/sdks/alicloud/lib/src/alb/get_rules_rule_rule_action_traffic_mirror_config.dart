// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_action_traffic_mirror_config_mirror_group_config.dart';

class GetRulesRuleRuleActionTrafficMirrorConfig {
  /// The Traffic is mirrored to the server group.
  final pulumi.Input<List<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig>> mirrorGroupConfigs;
  /// The Mirror target type.
  final pulumi.Input<String> targetType;

  /// Creates a new [GetRulesRuleRuleActionTrafficMirrorConfig].
  /// [mirrorGroupConfigs] The Traffic is mirrored to the server group.
  /// [targetType] The Mirror target type.
  GetRulesRuleRuleActionTrafficMirrorConfig({
    required this.mirrorGroupConfigs,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorGroupConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig>, List<Map<String, dynamic>>>(mirrorGroupConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetType': targetType,
    };
  }

  factory GetRulesRuleRuleActionTrafficMirrorConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionTrafficMirrorConfig(
      mirrorGroupConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig>(map['mirrorGroupConfigs'], (value) => GetRulesRuleRuleActionTrafficMirrorConfigMirrorGroupConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetType: (map['targetType'] as String).input(),
    );
  }
}

