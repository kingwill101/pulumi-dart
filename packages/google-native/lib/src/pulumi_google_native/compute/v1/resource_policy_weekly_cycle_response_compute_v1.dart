// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_response_compute_v1.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponseComputeV1 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1> dayOfWeeks;

  ResourcePolicyWeeklyCycleResponseComputeV1({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeeks'] = pulumi.Input.encodeList<
        ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1,
        Map<String, dynamic>>(dayOfWeeks, (value) => value.toMap());
    return map;
  }

  factory ResourcePolicyWeeklyCycleResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleResponseComputeV1(
      dayOfWeeks: pulumi.Input.decodeList<
              ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1>(
          map['dayOfWeeks'],
          (value) =>
              ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
