// ignore_for_file: unused_element, unnecessary_cast

import '../fleet_on_demand_options_capacity_reservation_options/fleet_on_demand_options_capacity_reservation_options.dart';

class FleetOnDemandOptions {
  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. Valid values: `lowestPrice`, <span pulumi-lang-nodejs="`prioritized`" pulumi-lang-dotnet="`Prioritized`" pulumi-lang-go="`prioritized`" pulumi-lang-python="`prioritized`" pulumi-lang-yaml="`prioritized`" pulumi-lang-java="`prioritized`">`prioritized`</span>. Default: `lowestPrice`.
  final String? allocationStrategy;

  /// The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final FleetOnDemandOptionsCapacityReservationOptions?
      capacityReservationOptions;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay.
  final String? maxTotalPrice;

  /// The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  /// If you specify <span pulumi-lang-nodejs="`minTargetCapacity`" pulumi-lang-dotnet="`MinTargetCapacity`" pulumi-lang-go="`minTargetCapacity`" pulumi-lang-python="`min_target_capacity`" pulumi-lang-yaml="`minTargetCapacity`" pulumi-lang-java="`minTargetCapacity`">`min_target_capacity`</span>, at least one of the following must be specified: <span pulumi-lang-nodejs="`singleAvailabilityZone`" pulumi-lang-dotnet="`SingleAvailabilityZone`" pulumi-lang-go="`singleAvailabilityZone`" pulumi-lang-python="`single_availability_zone`" pulumi-lang-yaml="`singleAvailabilityZone`" pulumi-lang-java="`singleAvailabilityZone`">`single_availability_zone`</span> or <span pulumi-lang-nodejs="`singleInstanceType`" pulumi-lang-dotnet="`SingleInstanceType`" pulumi-lang-go="`singleInstanceType`" pulumi-lang-python="`single_instance_type`" pulumi-lang-yaml="`singleInstanceType`" pulumi-lang-java="`singleInstanceType`">`single_instance_type`</span>.
  final int? minTargetCapacity;

  /// Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final bool? singleAvailabilityZone;

  /// Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final bool? singleInstanceType;

  FleetOnDemandOptions({
    this.allocationStrategy,
    this.capacityReservationOptions,
    this.maxTotalPrice,
    this.minTargetCapacity,
    this.singleAvailabilityZone,
    this.singleInstanceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationStrategyValue = allocationStrategy;
    if (allocationStrategyValue != null) {
      map['allocationStrategy'] = allocationStrategyValue;
    }
    final capacityReservationOptionsValue = capacityReservationOptions;
    if (capacityReservationOptionsValue != null) {
      map['capacityReservationOptions'] =
          capacityReservationOptionsValue.toMap();
    }
    final maxTotalPriceValue = maxTotalPrice;
    if (maxTotalPriceValue != null) {
      map['maxTotalPrice'] = maxTotalPriceValue;
    }
    final minTargetCapacityValue = minTargetCapacity;
    if (minTargetCapacityValue != null) {
      map['minTargetCapacity'] = minTargetCapacityValue;
    }
    final singleAvailabilityZoneValue = singleAvailabilityZone;
    if (singleAvailabilityZoneValue != null) {
      map['singleAvailabilityZone'] = singleAvailabilityZoneValue;
    }
    final singleInstanceTypeValue = singleInstanceType;
    if (singleInstanceTypeValue != null) {
      map['singleInstanceType'] = singleInstanceTypeValue;
    }
    return map;
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
                  .cast<String, dynamic>()),
      maxTotalPrice:
          map['maxTotalPrice'] == null ? null : map['maxTotalPrice'] as String,
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
