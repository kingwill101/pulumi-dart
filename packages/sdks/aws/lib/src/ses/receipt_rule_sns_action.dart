// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleSnsAction {
  /// The encoding to use for the email within the Amazon SNS notification. Default value is `UTF-8`.
  final pulumi.Input<String>? encoding;

  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;

  /// The ARN of an SNS topic to notify
  final pulumi.Input<String> topicArn;

  /// Creates a new [ReceiptRuleSnsAction].
  /// [encoding] The encoding to use for the email within the Amazon SNS notification. Default value is `UTF-8`.
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleSnsAction({
    this.encoding,
    required this.position,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'position': position,
      'topicArn': topicArn,
    };
  }

  factory ReceiptRuleSnsAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSnsAction(
      encoding: (() {
        final guardedValue = map['encoding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      position: pulumi.Input.fromValue(map['position'] as int),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
