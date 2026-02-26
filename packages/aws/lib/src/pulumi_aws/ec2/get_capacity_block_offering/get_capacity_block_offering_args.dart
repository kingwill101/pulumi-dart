// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCapacityBlockOffering.
class GetCapacityBlockOfferingArgs {
  /// The amount of time of the Capacity Block reservation in hours.
  final Input<int> capacityDurationHours;

  /// The date and time at which the Capacity Block Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? endDateRange;

  /// The number of instances for which to reserve capacity.
  final Input<int> instanceCount;

  /// The instance type for which to reserve capacity.
  final Input<String> instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? startDateRange;

  GetCapacityBlockOfferingArgs({
    required this.capacityDurationHours,
    this.endDateRange,
    required this.instanceCount,
    required this.instanceType,
    this.region,
    this.startDateRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityDurationHours'] = capacityDurationHours;
    final endDateRangeValue = endDateRange;
    if (endDateRangeValue != null) {
      map['endDateRange'] = endDateRangeValue;
    }
    map['instanceCount'] = instanceCount;
    map['instanceType'] = instanceType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startDateRangeValue = startDateRange;
    if (startDateRangeValue != null) {
      map['startDateRange'] = startDateRangeValue;
    }
    return map;
  }

  factory GetCapacityBlockOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockOfferingArgs(
      capacityDurationHours: Input.asInput<int>(map['capacityDurationHours']),
      endDateRange: Input.asOptionalInput<String>(map['endDateRange']),
      instanceCount: Input.asInput<int>(map['instanceCount']),
      instanceType: Input.asInput<String>(map['instanceType']),
      region: Input.asOptionalInput<String>(map['region']),
      startDateRange: Input.asOptionalInput<String>(map['startDateRange']),
    );
  }
}
