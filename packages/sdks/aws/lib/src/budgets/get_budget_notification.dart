// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetNotification {
  /// (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  final pulumi.Input<String> comparisonOperator;

  /// (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`.
  final pulumi.Input<String> notificationType;

  /// (Optional) E-Mail addresses to notify. Either this or `subscriber_sns_topic_arns` is required.
  final pulumi.Input<List<String>> subscriberEmailAddresses;

  /// (Optional) SNS topics to notify. Either this or `subscriber_email_addresses` is required.
  final pulumi.Input<List<String>> subscriberSnsTopicArns;

  /// (Required) Threshold when the notification should be sent.
  final pulumi.Input<double> threshold;

  /// (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  final pulumi.Input<String> thresholdType;

  /// Creates a new [GetBudgetNotification].
  /// [comparisonOperator] (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  /// [notificationType] (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`.
  /// [subscriberEmailAddresses] (Optional) E-Mail addresses to notify. Either this or `subscriber_sns_topic_arns` is required.
  /// [subscriberSnsTopicArns] (Optional) SNS topics to notify. Either this or `subscriber_email_addresses` is required.
  /// [threshold] (Required) Threshold when the notification should be sent.
  /// [thresholdType] (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  GetBudgetNotification({
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
      comparisonOperator: pulumi.Input.fromValue(
        map['comparisonOperator'] as String,
      ),
      notificationType: pulumi.Input.fromValue(
        map['notificationType'] as String,
      ),
      subscriberEmailAddresses: pulumi.Input.fromValue(
        (map['subscriberEmailAddresses'] as List).cast<String>(),
      ),
      subscriberSnsTopicArns: pulumi.Input.fromValue(
        (map['subscriberSnsTopicArns'] as List).cast<String>(),
      ),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      thresholdType: pulumi.Input.fromValue(map['thresholdType'] as String),
    );
  }
}
