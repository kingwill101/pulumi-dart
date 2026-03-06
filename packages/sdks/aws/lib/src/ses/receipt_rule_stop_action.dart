// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleStopAction {
  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;
  /// The scope to apply. The only acceptable value is `RuleSet`.
  final pulumi.Input<String> scope;
  /// The ARN of an SNS topic to notify
  final pulumi.Input<String>? topicArn;

  /// Creates a new [ReceiptRuleStopAction].
  /// [position] The position of the action in the receipt rule
  /// [scope] The scope to apply. The only acceptable value is `RuleSet`.
  /// [topicArn] The ARN of an SNS topic to notify
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
      position: pulumi.Input.fromValue(map['position'] as int),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

