// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleWorkmailAction {
  /// ARN of the WorkMail organization.
  final pulumi.Input<String> organizationArn;
  /// Position of the action in the receipt rule.
  final pulumi.Input<int> position;
  /// ARN of an SNS topic to notify.
  final pulumi.Input<String?>? topicArn;

  /// Creates a new [ReceiptRuleWorkmailAction].
  /// [organizationArn] ARN of the WorkMail organization.
  /// [position] Position of the action in the receipt rule.
  /// [topicArn] ARN of an SNS topic to notify.
  const ReceiptRuleWorkmailAction({
    required this.organizationArn,
    required this.position,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationArn': organizationArn,
      'position': position,
      'topicArn': ?topicArn,
    };
  }

  factory ReceiptRuleWorkmailAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleWorkmailAction(
      organizationArn: pulumi.Input.fromValue(map['organizationArn'] as String),
      position: pulumi.Input.fromValue((map['position'] as num).toInt()),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
