// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_on_demand_options_capacity_reservation_options.dart';

class FleetOnDemandOptions {
  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. Valid values: `lowestPrice`, `prioritized`. Default: `lowestPrice`.
  final pulumi.Input<String>? allocationStrategy;

  /// The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type `instant`.
  final pulumi.Input<FleetOnDemandOptionsCapacityReservationOptions>?
  capacityReservationOptions;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay.
  final pulumi.Input<String>? maxTotalPrice;

  /// The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  /// If you specify `min_target_capacity`, at least one of the following must be specified: `single_availability_zone` or `single_instance_type`.
  final pulumi.Input<int>? minTargetCapacity;

  /// Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  final pulumi.Input<bool>? singleAvailabilityZone;

  /// Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type `instant`.
  final pulumi.Input<bool>? singleInstanceType;

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
      'capacityReservationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            FleetOnDemandOptionsCapacityReservationOptions,
            Map<String, dynamic>
          >(capacityReservationOptions, (value) => value.toMap()),
      'maxTotalPrice': ?maxTotalPrice,
      'minTargetCapacity': ?minTargetCapacity,
      'singleAvailabilityZone': ?singleAvailabilityZone,
      'singleInstanceType': ?singleInstanceType,
    };
  }

  factory FleetOnDemandOptions.fromMap(Map<String, dynamic> map) {
    return FleetOnDemandOptions(
      allocationStrategy: (() {
        final guardedValue = map['allocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capacityReservationOptions: (() {
        final guardedValue = map['capacityReservationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetOnDemandOptionsCapacityReservationOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxTotalPrice: (() {
        final guardedValue = map['maxTotalPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minTargetCapacity: (() {
        final guardedValue = map['minTargetCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      singleAvailabilityZone: (() {
        final guardedValue = map['singleAvailabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      singleInstanceType: (() {
        final guardedValue = map['singleInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
