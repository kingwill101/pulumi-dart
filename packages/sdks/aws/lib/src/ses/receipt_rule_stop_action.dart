// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleStopAction {
  /// Position of the action in the receipt rule.
  final pulumi.Input<int> position;
  /// Scope to apply. The only acceptable value is `RuleSet`.
  final pulumi.Input<String> scope;
  /// ARN of an SNS topic to notify.
  final pulumi.Input<String?>? topicArn;

  /// Creates a new [ReceiptRuleStopAction].
  /// [position] Position of the action in the receipt rule.
  /// [scope] Scope to apply. The only acceptable value is `RuleSet`.
  /// [topicArn] ARN of an SNS topic to notify.
  const ReceiptRuleStopAction({
    required this.position,
    required this.scope,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': position,
      'scope': scope,
      'topicArn': ?topicArn,
    };
  }

  factory ReceiptRuleStopAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleStopAction(
      position: pulumi.Input.fromValue((map['position'] as num).toInt()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
