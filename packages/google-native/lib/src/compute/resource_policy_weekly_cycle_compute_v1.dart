// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_compute_v1.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleComputeV1 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeekComputeV1>? dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleComputeV1].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleComputeV1({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeeksValue = dayOfWeeks;
    if (dayOfWeeksValue != null) {
      map['dayOfWeeks'] = pulumi.Input.encodeList<
          ResourcePolicyWeeklyCycleDayOfWeekComputeV1,
          Map<String, dynamic>>(dayOfWeeksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleComputeV1(
      dayOfWeeks: map['dayOfWeeks'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResourcePolicyWeeklyCycleDayOfWeekComputeV1>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeekComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
