// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionScheduledChange {
  /// Type of pending change. Valid values: `DOWNGRADE`, `CANCELLATION`.
  final pulumi.Input<String> changeType;
  /// Date and time when the change takes effect.
  final pulumi.Input<String> effectiveDate;
  /// Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  final pulumi.Input<String> planTier;
  /// Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  final pulumi.Input<String> usageLevel;

  /// Creates a new [SubscriptionScheduledChange].
  /// [changeType] Type of pending change. Valid values: `DOWNGRADE`, `CANCELLATION`.
  /// [effectiveDate] Date and time when the change takes effect.
  /// [planTier] Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  /// [usageLevel] Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  const SubscriptionScheduledChange({
    required this.changeType,
    required this.effectiveDate,
    required this.planTier,
    required this.usageLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeType': changeType,
      'effectiveDate': effectiveDate,
      'planTier': planTier,
      'usageLevel': usageLevel,
    };
  }

  factory SubscriptionScheduledChange.fromMap(Map<String, dynamic> map) {
    return SubscriptionScheduledChange(
      changeType: pulumi.Input.fromValue(map['changeType'] as String),
      effectiveDate: pulumi.Input.fromValue(map['effectiveDate'] as String),
      planTier: pulumi.Input.fromValue(map['planTier'] as String),
      usageLevel: pulumi.Input.fromValue(map['usageLevel'] as String),
    );
  }
}
