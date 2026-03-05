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
    required this.capacityDurationHours,
    this.endDateRange,
    required this.instanceCount,
    required this.instanceType,
    this.region,
    this.startDateRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityDurationHours': capacityDurationHours,
      'endDateRange': ?endDateRange,
      'instanceCount': instanceCount,
      'instanceType': instanceType,
      'region': ?region,
      'startDateRange': ?startDateRange,
    };
  }

  factory GetCapacityBlockOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockOfferingArgs(
      capacityDurationHours: pulumi.Input.fromValue(map['capacityDurationHours'] as int),
      endDateRange: (() { final guardedValue = map['endDateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDateRange: (() { final guardedValue = map['startDateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

