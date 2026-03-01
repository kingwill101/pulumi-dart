// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anti_brute_force_rule_protocol_type.dart';

/// Input properties used for looking up and filtering AntiBruteForceRule resources.
class AntiBruteForceRuleState {
  /// The name of the defense rule.
  final pulumi.Input<String>? antiBruteForceRuleName;
  /// Specifies whether to set the defense rule as the default rule. Valid values:
  final pulumi.Input<bool>? defaultRule;
  /// FailCount
  final pulumi.Input<int>? failCount;
  /// The period of time during which logons from an account are not allowed. Unit: minutes. Valid values:
  final pulumi.Input<int>? forbiddenTime;
  /// The types of protocols supported for interception by the brute force attack rule creation. See `protocol_type` below.
  final pulumi.Input<AntiBruteForceRuleProtocolType>? protocolType;
  /// The maximum period of time during which failed logon attempts from an account can occur. Unit: minutes. Valid values:
  final pulumi.Input<int>? span;
  /// The UUIDs of the servers to which you want to apply the defense rule.
  final pulumi.Input<List<String>>? uuidLists;

  /// Creates a new [AntiBruteForceRuleState].
  /// [antiBruteForceRuleName] The name of the defense rule.
  /// [defaultRule] Specifies whether to set the defense rule as the default rule. Valid values:
  /// [failCount] FailCount
  /// [forbiddenTime] The period of time during which logons from an account are not allowed. Unit: minutes. Valid values:
  /// [protocolType] The types of protocols supported for interception by the brute force attack rule creation. See `protocol_type` below.
  /// [span] The maximum period of time during which failed logon attempts from an account can occur. Unit: minutes. Valid values:
  /// [uuidLists] The UUIDs of the servers to which you want to apply the defense rule.
  AntiBruteForceRuleState({
    pulumi.Output<String>? antiBruteForceRuleName,
    pulumi.Output<bool>? defaultRule,
    pulumi.Output<int>? failCount,
    pulumi.Output<int>? forbiddenTime,
    pulumi.Output<AntiBruteForceRuleProtocolType>? protocolType,
    pulumi.Output<int>? span,
    pulumi.Output<List<String>>? uuidLists,
  }) :
      antiBruteForceRuleName = pulumi.Input.asOptionalInput<String>(antiBruteForceRuleName),
      defaultRule = pulumi.Input.asOptionalInput<bool>(defaultRule),
      failCount = pulumi.Input.asOptionalInput<int>(failCount),
      forbiddenTime = pulumi.Input.asOptionalInput<int>(forbiddenTime),
      protocolType = pulumi.Input.asOptionalInput<AntiBruteForceRuleProtocolType>(protocolType),
      span = pulumi.Input.asOptionalInput<int>(span),
      uuidLists = pulumi.Input.asOptionalInput<List<String>>(uuidLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiBruteForceRuleName': ?antiBruteForceRuleName,
      'defaultRule': ?defaultRule,
      'failCount': ?failCount,
      'forbiddenTime': ?forbiddenTime,
      'protocolType': ?pulumi.Input.mapOptionalInputValue<AntiBruteForceRuleProtocolType, Map<String, dynamic>>(protocolType, (value) => value.toMap()),
      'span': ?span,
      'uuidLists': ?uuidLists,
    };
  }

  factory AntiBruteForceRuleState.fromMap(Map<String, dynamic> map) {
    return AntiBruteForceRuleState(
      antiBruteForceRuleName: map['antiBruteForceRuleName'] == null ? null : pulumi.Output.create<String>(map['antiBruteForceRuleName'] as String),
      defaultRule: map['defaultRule'] == null ? null : pulumi.Output.create<bool>(map['defaultRule'] as bool),
      failCount: map['failCount'] == null ? null : pulumi.Output.create<int>(map['failCount'] as int),
      forbiddenTime: map['forbiddenTime'] == null ? null : pulumi.Output.create<int>(map['forbiddenTime'] as int),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<AntiBruteForceRuleProtocolType>(AntiBruteForceRuleProtocolType.fromMap((map['protocolType'] as Map).cast<String, dynamic>())),
      span: map['span'] == null ? null : pulumi.Output.create<int>(map['span'] as int),
      uuidLists: map['uuidLists'] == null ? null : pulumi.Output.create<List<String>>((map['uuidLists'] as List).cast<String>()),
    );
  }
}

