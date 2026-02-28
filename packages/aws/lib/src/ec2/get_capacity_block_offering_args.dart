// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_capacity_block_offering_get_capacity_block_offering_args_doc}
/// Arguments for getCapacityBlockOffering.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_capacity_block_offering_get_capacity_block_offering_args_doc}
class GetCapacityBlockOfferingArgs {
  /// The amount of time of the Capacity Block reservation in hours.
  final pulumi.Input<int> capacityDurationHours;

  /// The date and time at which the Capacity Block Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? endDateRange;

  /// The number of instances for which to reserve capacity.
  final pulumi.Input<int> instanceCount;

  /// The instance type for which to reserve capacity.
  final pulumi.Input<String> instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? startDateRange;

  /// Creates a new [GetCapacityBlockOfferingArgs].
  /// [capacityDurationHours] The amount of time of the Capacity Block reservation in hours.
  /// [endDateRange] The date and time at which the Capacity Block Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [instanceCount] The number of instances for which to reserve capacity.
  /// [instanceType] The instance type for which to reserve capacity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startDateRange] The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  GetCapacityBlockOfferingArgs({
    required int capacityDurationHours,
    String? endDateRange,
    required int instanceCount,
    required String instanceType,
    String? region,
    String? startDateRange,
  })  : capacityDurationHours =
            pulumi.Input.asInput<int>(capacityDurationHours),
        endDateRange = pulumi.Input.asOptionalInput<String>(endDateRange),
        instanceCount = pulumi.Input.asInput<int>(instanceCount),
        instanceType = pulumi.Input.asInput<String>(instanceType),
        region = pulumi.Input.asOptionalInput<String>(region),
        startDateRange = pulumi.Input.asOptionalInput<String>(startDateRange);

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
      capacityDurationHours: map['capacityDurationHours'] as int,
      endDateRange:
          map['endDateRange'] == null ? null : map['endDateRange'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      startDateRange: map['startDateRange'] == null
          ? null
          : map['startDateRange'] as String,
    );
  }
}
