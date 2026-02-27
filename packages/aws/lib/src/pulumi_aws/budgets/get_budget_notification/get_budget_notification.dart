// ignore_for_file: unused_element, unnecessary_cast

class GetBudgetNotification {
  /// (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  final String comparisonOperator;

  /// (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`.
  final String notificationType;

  /// (Optional) E-Mail addresses to notify. Either this or `subscriber_sns_topic_arns` is required.
  final List<String> subscriberEmailAddresses;

  /// (Optional) SNS topics to notify. Either this or `subscriber_email_addresses` is required.
  final List<String> subscriberSnsTopicArns;

  /// (Required) Threshold when the notification should be sent.
  final double threshold;

  /// (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  final String thresholdType;

  GetBudgetNotification({
    required this.comparisonOperator,
    required this.notificationType,
    required this.subscriberEmailAddresses,
    required this.subscriberSnsTopicArns,
    required this.threshold,
    required this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparisonOperator'] = comparisonOperator;
    map['notificationType'] = notificationType;
    map['subscriberEmailAddresses'] = subscriberEmailAddresses;
    map['subscriberSnsTopicArns'] = subscriberSnsTopicArns;
    map['threshold'] = threshold;
    map['thresholdType'] = thresholdType;
    return map;
  }

  factory GetBudgetNotification.fromMap(Map<String, dynamic> map) {
    return GetBudgetNotification(
      comparisonOperator: map['comparisonOperator'] as String,
      notificationType: map['notificationType'] as String,
      subscriberEmailAddresses:
          (map['subscriberEmailAddresses'] as List).cast<String>(),
      subscriberSnsTopicArns:
          (map['subscriberSnsTopicArns'] as List).cast<String>(),
      threshold: map['threshold'] as double,
      thresholdType: map['thresholdType'] as String,
    );
  }
}
