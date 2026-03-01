// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anti_brute_force_rule_protocol_type.dart';

/// {@template pulumi_threatdetection_anti_brute_force_rule_anti_brute_force_rule_args_doc}
/// The set of arguments for AntiBruteForceRule.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_anti_brute_force_rule_anti_brute_force_rule_args_doc}
class AntiBruteForceRuleArgs {
  /// The name of the defense rule.
  final pulumi.Input<String> antiBruteForceRuleName;
  /// Specifies whether to set the defense rule as the default rule. Valid values:
  final pulumi.Input<bool>? defaultRule;
  /// FailCount
  final pulumi.Input<int> failCount;
  /// The period of time during which logons from an account are not allowed. Unit: minutes. Valid values:
  final pulumi.Input<int> forbiddenTime;
  /// The types of protocols supported for interception by the brute force attack rule creation. See `protocol_type` below.
  final pulumi.Input<AntiBruteForceRuleProtocolType>? protocolType;
  /// The maximum period of time during which failed logon attempts from an account can occur. Unit: minutes. Valid values:
  final pulumi.Input<int> span;
  /// The UUIDs of the servers to which you want to apply the defense rule.
  final pulumi.Input<List<String>> uuidLists;

  /// Creates a new [AntiBruteForceRuleArgs].
  /// [antiBruteForceRuleName] The name of the defense rule.
  /// [defaultRule] Specifies whether to set the defense rule as the default rule. Valid values:
  /// [failCount] FailCount
  /// [forbiddenTime] The period of time during which logons from an account are not allowed. Unit: minutes. Valid values:
  /// [protocolType] The types of protocols supported for interception by the brute force attack rule creation. See `protocol_type` below.
  /// [span] The maximum period of time during which failed logon attempts from an account can occur. Unit: minutes. Valid values:
  /// [uuidLists] The UUIDs of the servers to which you want to apply the defense rule.
  AntiBruteForceRuleArgs({
    required String antiBruteForceRuleName,
    bool? defaultRule,
    required int failCount,
    required int forbiddenTime,
    AntiBruteForceRuleProtocolType? protocolType,
    required int span,
    required List<String> uuidLists,
  }) :
      antiBruteForceRuleName = pulumi.Input.asInput<String>(antiBruteForceRuleName),
      defaultRule = pulumi.Input.asOptionalInput<bool>(defaultRule),
      failCount = pulumi.Input.asInput<int>(failCount),
      forbiddenTime = pulumi.Input.asInput<int>(forbiddenTime),
      protocolType = pulumi.Input.asOptionalInput<AntiBruteForceRuleProtocolType>(protocolType),
      span = pulumi.Input.asInput<int>(span),
      uuidLists = pulumi.Input.asInput<List<String>>(uuidLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiBruteForceRuleName': antiBruteForceRuleName,
      'defaultRule': ?defaultRule,
      'failCount': failCount,
      'forbiddenTime': forbiddenTime,
      'protocolType': ?pulumi.Input.mapOptionalInputValue<AntiBruteForceRuleProtocolType, Map<String, dynamic>>(protocolType, (value) => value.toMap()),
      'span': span,
      'uuidLists': uuidLists,
    };
  }

  factory AntiBruteForceRuleArgs.fromMap(Map<String, dynamic> map) {
    return AntiBruteForceRuleArgs(
      antiBruteForceRuleName: map['antiBruteForceRuleName'] as String,
      defaultRule: map['defaultRule'] == null ? null : map['defaultRule'] as bool,
      failCount: map['failCount'] as int,
      forbiddenTime: map['forbiddenTime'] as int,
      protocolType: map['protocolType'] == null ? null : AntiBruteForceRuleProtocolType.fromMap((map['protocolType'] as Map).cast<String, dynamic>()),
      span: map['span'] as int,
      uuidLists: (map['uuidLists'] as List).cast<String>(),
    );
  }
}

