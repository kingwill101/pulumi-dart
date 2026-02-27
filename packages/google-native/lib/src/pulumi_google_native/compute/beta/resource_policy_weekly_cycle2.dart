// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_policy_weekly_cycle_day_of_week2.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycle2 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeek2>? dayOfWeeks;

  ResourcePolicyWeeklyCycle2({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeeksValue = dayOfWeeks;
    if (dayOfWeeksValue != null) {
      map['dayOfWeeks'] = Input.encodeList<ResourcePolicyWeeklyCycleDayOfWeek2,
          Map<String, dynamic>>(dayOfWeeksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycle2.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycle2(
      dayOfWeeks: map['dayOfWeeks'] == null
          ? null
          : Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeek2>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeek2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
