// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetNotification {
  /// (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  final pulumi.Input<String> comparisonOperator;
  /// (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`
  final pulumi.Input<String> notificationType;
  /// (Optional) E-Mail addresses to notify. Either this or `subscriberSnsTopicArns` is required.
  final pulumi.Input<List<String>?>? subscriberEmailAddresses;
  /// (Optional) SNS topics to notify. Either this or `subscriberEmailAddresses` is required.
  final pulumi.Input<List<String>?>? subscriberSnsTopicArns;
  /// (Required) Threshold when the notification should be sent.
  final pulumi.Input<double> threshold;
  /// (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  final pulumi.Input<String> thresholdType;

  /// Creates a new [BudgetNotification].
  /// [comparisonOperator] (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  /// [notificationType] (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`
  /// [subscriberEmailAddresses] (Optional) E-Mail addresses to notify. Either this or `subscriberSnsTopicArns` is required.
  /// [subscriberSnsTopicArns] (Optional) SNS topics to notify. Either this or `subscriberEmailAddresses` is required.
  /// [threshold] (Required) Threshold when the notification should be sent.
  /// [thresholdType] (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  const BudgetNotification({
    required this.comparisonOperator,
    required this.notificationType,
    this.subscriberEmailAddresses,
    this.subscriberSnsTopicArns,
    required this.threshold,
    required this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'notificationType': notificationType,
      'subscriberEmailAddresses': ?subscriberEmailAddresses,
      'subscriberSnsTopicArns': ?subscriberSnsTopicArns,
      'threshold': threshold,
      'thresholdType': thresholdType,
    };
  }

  factory BudgetNotification.fromMap(Map<String, dynamic> map) {
    return BudgetNotification(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      notificationType: pulumi.Input.fromValue(map['notificationType'] as String),
      subscriberEmailAddresses: (() { final guardedValue = map['subscriberEmailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriberSnsTopicArns: (() { final guardedValue = map['subscriberSnsTopicArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
      thresholdType: pulumi.Input.fromValue(map['thresholdType'] as String),
    );
  }
}
