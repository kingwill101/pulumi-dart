// ignore_for_file: unused_element, unnecessary_cast

class BudgetActionActionThreshold {
  /// The type of threshold for a notification. Valid values are `PERCENTAGE` or `ABSOLUTE_VALUE`.
  final String actionThresholdType;

  /// The threshold of a notification.
  final double actionThresholdValue;

  /// Creates a new [BudgetActionActionThreshold].
  /// [actionThresholdType] The type of threshold for a notification. Valid values are `PERCENTAGE` or `ABSOLUTE_VALUE`.
  /// [actionThresholdValue] The threshold of a notification.
  BudgetActionActionThreshold({
    required this.actionThresholdType,
    required this.actionThresholdValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionThresholdType'] = actionThresholdType;
    map['actionThresholdValue'] = actionThresholdValue;
    return map;
  }

  factory BudgetActionActionThreshold.fromMap(Map<String, dynamic> map) {
    return BudgetActionActionThreshold(
      actionThresholdType: map['actionThresholdType'] as String,
      actionThresholdValue: map['actionThresholdValue'] as double,
    );
  }
}
