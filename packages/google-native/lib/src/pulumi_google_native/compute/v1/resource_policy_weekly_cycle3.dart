// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_policy_weekly_cycle_day_of_week3.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycle3 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeek3>? dayOfWeeks;

  ResourcePolicyWeeklyCycle3({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeeksValue = dayOfWeeks;
    if (dayOfWeeksValue != null) {
      map['dayOfWeeks'] = Input.encodeList<ResourcePolicyWeeklyCycleDayOfWeek3,
          Map<String, dynamic>>(dayOfWeeksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycle3.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycle3(
      dayOfWeeks: map['dayOfWeeks'] == null
          ? null
          : Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeek3>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeek3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
