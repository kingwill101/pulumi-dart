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
    this.antiBruteForceRuleName,
    this.defaultRule,
    this.failCount,
    this.forbiddenTime,
    this.protocolType,
    this.span,
    this.uuidLists,
  });

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
      antiBruteForceRuleName: map['antiBruteForceRuleName'] == null ? null : (map['antiBruteForceRuleName'] as String).input(),
      defaultRule: map['defaultRule'] == null ? null : (map['defaultRule'] as bool).input(),
      failCount: map['failCount'] == null ? null : (map['failCount'] as int).input(),
      forbiddenTime: map['forbiddenTime'] == null ? null : (map['forbiddenTime'] as int).input(),
      protocolType: map['protocolType'] == null ? null : (AntiBruteForceRuleProtocolType.fromMap((map['protocolType'] as Map).cast<String, dynamic>())).input(),
      span: map['span'] == null ? null : (map['span'] as int).input(),
      uuidLists: map['uuidLists'] == null ? null : ((map['uuidLists'] as List).cast<String>()).input(),
    );
  }
}

