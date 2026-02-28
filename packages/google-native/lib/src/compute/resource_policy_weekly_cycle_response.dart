// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_response.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponse {
  /// Up to 7 intervals/windows, one for each day of the week.
  final List<ResourcePolicyWeeklyCycleDayOfWeekResponse> dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleResponse].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleResponse({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeeks'] = pulumi.Input.encodeList<
        ResourcePolicyWeeklyCycleDayOfWeekResponse,
        Map<String, dynamic>>(dayOfWeeks, (value) => value.toMap());
    return map;
  }

  factory ResourcePolicyWeeklyCycleResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleResponse(
      dayOfWeeks:
          pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeekResponse>(
              map['dayOfWeeks'],
              (value) => ResourcePolicyWeeklyCycleDayOfWeekResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
