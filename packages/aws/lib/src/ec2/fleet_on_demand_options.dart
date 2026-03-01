// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_on_demand_options_capacity_reservation_options.dart';

class FleetOnDemandOptions {
  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. Valid values: `lowestPrice`, `prioritized`. Default: `lowestPrice`.
  final String? allocationStrategy;

  /// The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type `instant`.
  final FleetOnDemandOptionsCapacityReservationOptions?
  capacityReservationOptions;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay.
  final String? maxTotalPrice;

  /// The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  /// If you specify `min_target_capacity`, at least one of the following must be specified: `single_availability_zone` or `single_instance_type`.
  final int? minTargetCapacity;

  /// Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  final bool? singleAvailabilityZone;

  /// Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type `instant`.
  final bool? singleInstanceType;

  /// Creates a new [FleetOnDemandOptions].
  /// [allocationStrategy] The order of the launch template overrides to use in fulfilling On-Demand capacity. Valid values: `lowestPrice`, `prioritized`. Default: `lowestPrice`.
  /// [capacityReservationOptions] The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type `instant`.
  /// [maxTotalPrice] The maximum amount per hour for On-Demand Instances that you're willing to pay.
  /// [minTargetCapacity] The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  /// [singleAvailabilityZone] Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  /// [singleInstanceType] Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type `instant`.
  FleetOnDemandOptions({
    this.allocationStrategy,
    this.capacityReservationOptions,
    this.maxTotalPrice,
    this.minTargetCapacity,
    this.singleAvailabilityZone,
    this.singleInstanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'capacityReservationOptions': ?capacityReservationOptions == null
          ? null
          : capacityReservationOptions!.toMap(),
      'maxTotalPrice': ?maxTotalPrice,
      'minTargetCapacity': ?minTargetCapacity,
      'singleAvailabilityZone': ?singleAvailabilityZone,
      'singleInstanceType': ?singleInstanceType,
    };
  }

  factory FleetOnDemandOptions.fromMap(Map<String, dynamic> map) {
    return FleetOnDemandOptions(
      allocationStrategy: map['allocationStrategy'] == null
          ? null
          : map['allocationStrategy'] as String,
      capacityReservationOptions: map['capacityReservationOptions'] == null
          ? null
          : FleetOnDemandOptionsCapacityReservationOptions.fromMap(
              (map['capacityReservationOptions'] as Map)
                  .cast<String, dynamic>(),
            ),
      maxTotalPrice: map['maxTotalPrice'] == null
          ? null
          : map['maxTotalPrice'] as String,
      minTargetCapacity: map['minTargetCapacity'] == null
          ? null
          : map['minTargetCapacity'] as int,
      singleAvailabilityZone: map['singleAvailabilityZone'] == null
          ? null
          : map['singleAvailabilityZone'] as bool,
      singleInstanceType: map['singleInstanceType'] == null
          ? null
          : map['singleInstanceType'] as bool,
    );
  }
}
