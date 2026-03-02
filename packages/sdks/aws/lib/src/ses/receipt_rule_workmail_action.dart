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
      organizationArn: (map['organizationArn'] as String).input(),
      position: (map['position'] as int).input(),
      topicArn: map['topicArn'] == null ? null : (map['topicArn'] as String).input(),
    );
  }
}

