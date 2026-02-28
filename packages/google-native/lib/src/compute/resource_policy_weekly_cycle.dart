// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycle {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeek>? dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycle].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycle({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeeksValue = dayOfWeeks;
    if (dayOfWeeksValue != null) {
      map['dayOfWeeks'] = pulumi.Input.encodeList<
          ResourcePolicyWeeklyCycleDayOfWeek,
          Map<String, dynamic>>(dayOfWeeksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycle.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycle(
      dayOfWeeks: map['dayOfWeeks'] == null
          ? null
          : pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeek>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeek.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
