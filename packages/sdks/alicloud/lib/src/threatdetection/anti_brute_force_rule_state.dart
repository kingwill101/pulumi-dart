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
      antiBruteForceRuleName: (() { final guardedValue = map['antiBruteForceRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRule: (() { final guardedValue = map['defaultRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failCount: (() { final guardedValue = map['failCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      forbiddenTime: (() { final guardedValue = map['forbiddenTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AntiBruteForceRuleProtocolType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      span: (() { final guardedValue = map['span']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uuidLists: (() { final guardedValue = map['uuidLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

