// ignore_for_file: unused_element, unnecessary_cast

/// ThresholdRule contains the definition of a threshold. Threshold rules define the triggering events used to generate a budget notification email. When a threshold is crossed (spend exceeds the specified percentages of the budget), budget alert emails are sent to the email recipients you specify in the [NotificationsRule](#notificationsrule). Threshold rules also affect the fields included in the [JSON data object](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format) sent to a Pub/Sub topic. Threshold rules are _required_ if using email notifications. Threshold rules are _optional_ if only setting a [`pubsubTopic` NotificationsRule](#NotificationsRule), unless you want your JSON data object to include data about the thresholds you set. For more information, see [set budget threshold rules and actions](https://cloud.google.com/billing/docs/how-to/budgets#budget-actions).
class GoogleCloudBillingBudgetsV1ThresholdRuleResponse {
  /// Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.
  final String spendBasis;

  /// Send an alert when this threshold is exceeded. This is a 1.0-based percentage, so 0.5 = 50%. Validation: non-negative number.
  final double thresholdPercent;

  /// Creates a new [GoogleCloudBillingBudgetsV1ThresholdRuleResponse].
  /// [spendBasis] Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.
  /// [thresholdPercent] Send an alert when this threshold is exceeded. This is a 1.0-based percentage, so 0.5 = 50%. Validation: non-negative number.
  GoogleCloudBillingBudgetsV1ThresholdRuleResponse({
    required this.spendBasis,
    required this.thresholdPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['spendBasis'] = spendBasis;
    map['thresholdPercent'] = thresholdPercent;
    return map;
  }

  factory GoogleCloudBillingBudgetsV1ThresholdRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1ThresholdRuleResponse(
      spendBasis: map['spendBasis'] as String,
      thresholdPercent: map['thresholdPercent'] as double,
    );
  }
}
