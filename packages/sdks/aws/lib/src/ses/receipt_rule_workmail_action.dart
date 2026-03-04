// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleWorkmailAction {
  /// The ARN of the WorkMail organization
  final pulumi.Input<String> organizationArn;

  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;

  /// The ARN of an SNS topic to notify
  final pulumi.Input<String>? topicArn;

  /// Creates a new [ReceiptRuleWorkmailAction].
  /// [organizationArn] The ARN of the WorkMail organization
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleWorkmailAction({
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
      position: pulumi.Input.fromValue(map['position'] as int),
      topicArn: (() {
        final guardedValue = map['topicArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
