// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_compute_beta.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleComputeBeta {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeekComputeBeta>? dayOfWeeks;

  ResourcePolicyWeeklyCycleComputeBeta({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeeksValue = dayOfWeeks;
    if (dayOfWeeksValue != null) {
      map['dayOfWeeks'] = pulumi.Input.encodeList<
          ResourcePolicyWeeklyCycleDayOfWeekComputeBeta,
          Map<String, dynamic>>(dayOfWeeksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycleComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleComputeBeta(
      dayOfWeeks: map['dayOfWeeks'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResourcePolicyWeeklyCycleDayOfWeekComputeBeta>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeekComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
