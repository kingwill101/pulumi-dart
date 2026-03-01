// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_spot_options_maintenance_strategies.dart';

class FleetSpotOptions {
  /// How to allocate the target capacity across the Spot pools. Valid values: `diversified`, `lowestPrice`, `capacity-optimized`, `capacity-optimized-prioritized` and `price-capacity-optimized`. Default: `lowestPrice`.
  final String? allocationStrategy;

  /// Behavior when a Spot Instance is interrupted. Valid values: `hibernate`, `stop`, `terminate`. Default: `terminate`.
  final String? instanceInterruptionBehavior;

  /// Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot `allocation_strategy` is set to `lowestPrice`. Default: `1`.
  final int? instancePoolsToUseCount;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final FleetSpotOptionsMaintenanceStrategies? maintenanceStrategies;

  /// The maximum amount per hour for Spot Instances that you're willing to pay.
  final String? maxTotalPrice;

  /// The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  final int? minTargetCapacity;

  /// Indicates that the fleet launches all Spot Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  final bool? singleAvailabilityZone;

  /// Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet. Supported only for fleets of type `instant`.
  final bool? singleInstanceType;

  /// Creates a new [FleetSpotOptions].
  /// [allocationStrategy] How to allocate the target capacity across the Spot pools. Valid values: `diversified`, `lowestPrice`, `capacity-optimized`, `capacity-optimized-prioritized` and `price-capacity-optimized`. Default: `lowestPrice`.
  /// [instanceInterruptionBehavior] Behavior when a Spot Instance is interrupted. Valid values: `hibernate`, `stop`, `terminate`. Default: `terminate`.
  /// [instancePoolsToUseCount] Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot `allocation_strategy` is set to `lowestPrice`. Default: `1`.
  /// [maintenanceStrategies] Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  /// [maxTotalPrice] The maximum amount per hour for Spot Instances that you're willing to pay.
  /// [minTargetCapacity] The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  /// [singleAvailabilityZone] Indicates that the fleet launches all Spot Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  /// [singleInstanceType] Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet. Supported only for fleets of type `instant`.
  FleetSpotOptions({
    this.allocationStrategy,
    this.instanceInterruptionBehavior,
    this.instancePoolsToUseCount,
    this.maintenanceStrategies,
    this.maxTotalPrice,
    this.minTargetCapacity,
    this.singleAvailabilityZone,
    this.singleInstanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'instanceInterruptionBehavior': ?instanceInterruptionBehavior,
      'instancePoolsToUseCount': ?instancePoolsToUseCount,
      'maintenanceStrategies': ?maintenanceStrategies == null
          ? null
          : maintenanceStrategies!.toMap(),
      'maxTotalPrice': ?maxTotalPrice,
      'minTargetCapacity': ?minTargetCapacity,
      'singleAvailabilityZone': ?singleAvailabilityZone,
      'singleInstanceType': ?singleInstanceType,
    };
  }

  factory FleetSpotOptions.fromMap(Map<String, dynamic> map) {
    return FleetSpotOptions(
      allocationStrategy: map['allocationStrategy'] == null
          ? null
          : map['allocationStrategy'] as String,
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null
          ? null
          : map['instanceInterruptionBehavior'] as String,
      instancePoolsToUseCount: map['instancePoolsToUseCount'] == null
          ? null
          : map['instancePoolsToUseCount'] as int,
      maintenanceStrategies: map['maintenanceStrategies'] == null
          ? null
          : FleetSpotOptionsMaintenanceStrategies.fromMap(
              (map['maintenanceStrategies'] as Map).cast<String, dynamic>(),
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
