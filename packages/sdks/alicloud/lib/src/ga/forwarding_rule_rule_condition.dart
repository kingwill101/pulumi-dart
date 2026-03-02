// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_rule_condition_host_config.dart';
import 'forwarding_rule_rule_condition_path_config.dart';

class ForwardingRuleRuleCondition {
  /// The configuration of the domain name. See `host_config` below.
  /// > **NOTE:** From version 1.231.0, We recommend that you do not use `path_config` or `host_config`, and we recommend that you use the `rule_condition_type` and `rule_condition_value` to configure forwarding conditions.
  final pulumi.Input<List<ForwardingRuleRuleConditionHostConfig>>? hostConfigs;
  /// The configuration of the path. See `path_config` below.
  final pulumi.Input<ForwardingRuleRuleConditionPathConfig>? pathConfig;
  /// The type of the forwarding conditions. Valid values: `Host`, `Path`, `RequestHeader`, `Query`, `Method`, `Cookie`, `SourceIP`. **NOTE:** From version 1.231.0, `rule_condition_type` can be set to `RequestHeader`, `Query`, `Method`, `Cookie`, `SourceIP`.
  final pulumi.Input<String> ruleConditionType;
  /// The value of the forwarding condition type. For more information, see [How to use it](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createforwardingrules).
  final pulumi.Input<String>? ruleConditionValue;

  /// Creates a new [ForwardingRuleRuleCondition].
  /// [hostConfigs] The configuration of the domain name. See `host_config` below.
  /// [pathConfig] The configuration of the path. See `path_config` below.
  /// [ruleConditionType] The type of the forwarding conditions. Valid values: `Host`, `Path`, `RequestHeader`, `Query`, `Method`, `Cookie`, `SourceIP`. **NOTE:** From version 1.231.0, `rule_condition_type` can be set to `RequestHeader`, `Query`, `Method`, `Cookie`, `SourceIP`.
  /// [ruleConditionValue] The value of the forwarding condition type. For more information, see [How to use it](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createforwardingrules).
  ForwardingRuleRuleCondition({
    this.hostConfigs,
    this.pathConfig,
    required this.ruleConditionType,
    this.ruleConditionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostConfigs': ?pulumi.Input.mapOptionalInputValue<List<ForwardingRuleRuleConditionHostConfig>, List<Map<String, dynamic>>>(hostConfigs, (value) => pulumi.Input.encodeList<ForwardingRuleRuleConditionHostConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathConfig': ?pulumi.Input.mapOptionalInputValue<ForwardingRuleRuleConditionPathConfig, Map<String, dynamic>>(pathConfig, (value) => value.toMap()),
      'ruleConditionType': ruleConditionType,
      'ruleConditionValue': ?ruleConditionValue,
    };
  }

  factory ForwardingRuleRuleCondition.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleCondition(
      hostConfigs: map['hostConfigs'] == null ? null : (pulumi.Input.decodeList<ForwardingRuleRuleConditionHostConfig>(map['hostConfigs']!, (value) => ForwardingRuleRuleConditionHostConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pathConfig: map['pathConfig'] == null ? null : (ForwardingRuleRuleConditionPathConfig.fromMap((map['pathConfig']! as Map).cast<String, dynamic>())).input(),
      ruleConditionType: (map['ruleConditionType'] as String).input(),
      ruleConditionValue: map['ruleConditionValue'] == null ? null : (map['ruleConditionValue']! as String).input(),
    );
  }
}

