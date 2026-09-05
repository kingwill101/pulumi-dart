// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigRuleFilterValue {
  /// Boolean value for true/false filtering.
  final pulumi.Input<bool?>? booleanValue;
  /// Numeric value for numerical filtering.
  final pulumi.Input<double?>? doubleValue;
  /// String value for text-based filtering.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [AgentcoreOnlineEvaluationConfigRuleFilterValue].
  /// [booleanValue] Boolean value for true/false filtering.
  /// [doubleValue] Numeric value for numerical filtering.
  /// [stringValue] String value for text-based filtering.
  const AgentcoreOnlineEvaluationConfigRuleFilterValue({
    this.booleanValue,
    this.doubleValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'doubleValue': ?doubleValue,
      'stringValue': ?stringValue,
    };
  }

  factory AgentcoreOnlineEvaluationConfigRuleFilterValue.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigRuleFilterValue(
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
