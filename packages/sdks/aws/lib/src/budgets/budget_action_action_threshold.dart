// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetActionActionThreshold {
  /// Type of threshold for a notification. Valid values are `PERCENTAGE` or `ABSOLUTE_VALUE`.
  final pulumi.Input<String> actionThresholdType;
  /// Threshold of a notification.
  final pulumi.Input<double> actionThresholdValue;

  /// Creates a new [BudgetActionActionThreshold].
  /// [actionThresholdType] Type of threshold for a notification. Valid values are `PERCENTAGE` or `ABSOLUTE_VALUE`.
  /// [actionThresholdValue] Threshold of a notification.
  const BudgetActionActionThreshold({
    required this.actionThresholdType,
    required this.actionThresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionThresholdType': actionThresholdType,
      'actionThresholdValue': actionThresholdValue,
    };
  }

  factory BudgetActionActionThreshold.fromMap(Map<String, dynamic> map) {
    return BudgetActionActionThreshold(
      actionThresholdType: pulumi.Input.fromValue(map['actionThresholdType'] as String),
      actionThresholdValue: pulumi.Input.fromValue((map['actionThresholdValue'] as num).toDouble()),
    );
  }
}
