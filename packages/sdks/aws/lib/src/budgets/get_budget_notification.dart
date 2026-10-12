// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetNotification {
  /// Comparison operator used to evaluate the condition. Valid values: `LESS_THAN`, `EQUAL_TO`, `GREATER_THAN`.
  final pulumi.Input<String> comparisonOperator;
  /// Type of budget value to notify on. Valid values: `ACTUAL`, `FORECASTED`.
  final pulumi.Input<String> notificationType;
  /// Email addresses to notify.
  final pulumi.Input<List<String>> subscriberEmailAddresses;
  /// SNS topics to notify.
  final pulumi.Input<List<String>> subscriberSnsTopicArns;
  /// Threshold at which the notification is sent.
  final pulumi.Input<double> threshold;
  /// Type of threshold. Valid values: `PERCENTAGE`, `ABSOLUTE_VALUE`.
  final pulumi.Input<String> thresholdType;

  /// Creates a new [GetBudgetNotification].
  /// [comparisonOperator] Comparison operator used to evaluate the condition. Valid values: `LESS_THAN`, `EQUAL_TO`, `GREATER_THAN`.
  /// [notificationType] Type of budget value to notify on. Valid values: `ACTUAL`, `FORECASTED`.
  /// [subscriberEmailAddresses] Email addresses to notify.
  /// [subscriberSnsTopicArns] SNS topics to notify.
  /// [threshold] Threshold at which the notification is sent.
  /// [thresholdType] Type of threshold. Valid values: `PERCENTAGE`, `ABSOLUTE_VALUE`.
  const GetBudgetNotification({
    required this.comparisonOperator,
    required this.notificationType,
    required this.subscriberEmailAddresses,
    required this.subscriberSnsTopicArns,
    required this.threshold,
    required this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'notificationType': notificationType,
      'subscriberEmailAddresses': subscriberEmailAddresses,
      'subscriberSnsTopicArns': subscriberSnsTopicArns,
      'threshold': threshold,
      'thresholdType': thresholdType,
    };
  }

  factory GetBudgetNotification.fromMap(Map<String, dynamic> map) {
    return GetBudgetNotification(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      notificationType: pulumi.Input.fromValue(map['notificationType'] as String),
      subscriberEmailAddresses: pulumi.Input.fromValue((map['subscriberEmailAddresses'] as List).cast<String>()),
      subscriberSnsTopicArns: pulumi.Input.fromValue((map['subscriberSnsTopicArns'] as List).cast<String>()),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
      thresholdType: pulumi.Input.fromValue(map['thresholdType'] as String),
    );
  }
}
