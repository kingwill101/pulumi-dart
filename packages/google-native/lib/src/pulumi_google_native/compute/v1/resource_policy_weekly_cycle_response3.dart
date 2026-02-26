// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_policy_weekly_cycle_day_of_week_response3.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponse3 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeekResponse3> dayOfWeeks;

  ResourcePolicyWeeklyCycleResponse3({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeeks'] = Input.encodeList<
        ResourcePolicyWeeklyCycleDayOfWeekResponse3,
        Map<String, dynamic>>(dayOfWeeks, (value) => value.toMap());
    return map;
  }

  factory ResourcePolicyWeeklyCycleResponse3.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleResponse3(
      dayOfWeeks: Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeekResponse3>(
          map['dayOfWeeks'],
          (value) => ResourcePolicyWeeklyCycleDayOfWeekResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
