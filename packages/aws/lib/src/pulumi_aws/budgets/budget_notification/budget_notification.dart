// ignore_for_file: unused_element, unnecessary_cast

class BudgetNotification {
  /// (Required) Comparison operator to use to evaluate the condition. Can be `LESS_THAN`, `EQUAL_TO` or `GREATER_THAN`.
  final String comparisonOperator;

  /// (Required) What kind of budget value to notify on. Can be `ACTUAL` or `FORECASTED`
  final String notificationType;

  /// (Optional) E-Mail addresses to notify. Either this or <span pulumi-lang-nodejs="`subscriberSnsTopicArns`" pulumi-lang-dotnet="`SubscriberSnsTopicArns`" pulumi-lang-go="`subscriberSnsTopicArns`" pulumi-lang-python="`subscriber_sns_topic_arns`" pulumi-lang-yaml="`subscriberSnsTopicArns`" pulumi-lang-java="`subscriberSnsTopicArns`">`subscriber_sns_topic_arns`</span> is required.
  final List<String>? subscriberEmailAddresses;

  /// (Optional) SNS topics to notify. Either this or <span pulumi-lang-nodejs="`subscriberEmailAddresses`" pulumi-lang-dotnet="`SubscriberEmailAddresses`" pulumi-lang-go="`subscriberEmailAddresses`" pulumi-lang-python="`subscriber_email_addresses`" pulumi-lang-yaml="`subscriberEmailAddresses`" pulumi-lang-java="`subscriberEmailAddresses`">`subscriber_email_addresses`</span> is required.
  final List<String>? subscriberSnsTopicArns;

  /// (Required) Threshold when the notification should be sent.
  final double threshold;

  /// (Required) What kind of threshold is defined. Can be `PERCENTAGE` OR `ABSOLUTE_VALUE`.
  final String thresholdType;

  BudgetNotification({
    required this.comparisonOperator,
    required this.notificationType,
    this.subscriberEmailAddresses,
    this.subscriberSnsTopicArns,
    required this.threshold,
    required this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparisonOperator'] = comparisonOperator;
    map['notificationType'] = notificationType;
    final subscriberEmailAddressesValue = subscriberEmailAddresses;
    if (subscriberEmailAddressesValue != null) {
      map['subscriberEmailAddresses'] = subscriberEmailAddressesValue;
    }
    final subscriberSnsTopicArnsValue = subscriberSnsTopicArns;
    if (subscriberSnsTopicArnsValue != null) {
      map['subscriberSnsTopicArns'] = subscriberSnsTopicArnsValue;
    }
    map['threshold'] = threshold;
    map['thresholdType'] = thresholdType;
    return map;
  }

  factory BudgetNotification.fromMap(Map<String, dynamic> map) {
    return BudgetNotification(
      comparisonOperator: map['comparisonOperator'] as String,
      notificationType: map['notificationType'] as String,
      subscriberEmailAddresses: map['subscriberEmailAddresses'] == null
          ? null
          : (map['subscriberEmailAddresses'] as List).cast<String>(),
      subscriberSnsTopicArns: map['subscriberSnsTopicArns'] == null
          ? null
          : (map['subscriberSnsTopicArns'] as List).cast<String>(),
      threshold: map['threshold'] as double,
      thresholdType: map['thresholdType'] as String,
    );
  }
}
