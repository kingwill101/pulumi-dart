// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_spot_options_maintenance_strategies.dart';

class FleetSpotOptions {
  /// How to allocate the target capacity across the Spot pools. Valid values: `diversified`, `lowestPrice`, `capacity-optimized`, `capacity-optimized-prioritized` and `price-capacity-optimized`. Default: `lowestPrice`.
  final pulumi.Input<String>? allocationStrategy;
  /// Behavior when a Spot Instance is interrupted. Valid values: `hibernate`, `stop`, `terminate`. Default: `terminate`.
  final pulumi.Input<String>? instanceInterruptionBehavior;
  /// Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot `allocation_strategy` is set to `lowestPrice`. Default: `1`.
  final pulumi.Input<int>? instancePoolsToUseCount;
  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final pulumi.Input<FleetSpotOptionsMaintenanceStrategies>? maintenanceStrategies;
  /// The maximum amount per hour for Spot Instances that you're willing to pay.
  final pulumi.Input<String>? maxTotalPrice;
  /// The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  final pulumi.Input<int>? minTargetCapacity;
  /// Indicates that the fleet launches all Spot Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  final pulumi.Input<bool>? singleAvailabilityZone;
  /// Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet. Supported only for fleets of type `instant`.
  final pulumi.Input<bool>? singleInstanceType;

  /// Creates a new [FleetSpotOptions].
  /// [allocationStrategy] How to allocate the target capacity across the Spot pools. Valid values: `diversified`, `lowestPrice`, `capacity-optimized`, `capacity-optimized-prioritized` and `price-capacity-optimized`. Default: `lowestPrice`.
  /// [instanceInterruptionBehavior] Behavior when a Spot Instance is interrupted. Valid values: `hibernate`, `stop`, `terminate`. Default: `terminate`.
  /// [instancePoolsToUseCount] Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot `allocation_strategy` is set to `lowestPrice`. Default: `1`.
  /// [maintenanceStrategies] Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  /// [maxTotalPrice] The maximum amount per hour for Spot Instances that you're willing to pay.
  /// [minTargetCapacity] The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type `instant`.
  /// [singleAvailabilityZone] Indicates that the fleet launches all Spot Instances into a single Availability Zone. Supported only for fleets of type `instant`.
  /// [singleInstanceType] Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet. Supported only for fleets of type `instant`.
  const FleetSpotOptions({
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
      'maintenanceStrategies': ?pulumi.Input.mapOptionalInputValue<FleetSpotOptionsMaintenanceStrategies, Map<String, dynamic>>(maintenanceStrategies, (value) => value.toMap()),
      'maxTotalPrice': ?maxTotalPrice,
      'minTargetCapacity': ?minTargetCapacity,
      'singleAvailabilityZone': ?singleAvailabilityZone,
      'singleInstanceType': ?singleInstanceType,
    };
  }

  factory FleetSpotOptions.fromMap(Map<String, dynamic> map) {
    return FleetSpotOptions(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceInterruptionBehavior: (() { final guardedValue = map['instanceInterruptionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePoolsToUseCount: (() { final guardedValue = map['instancePoolsToUseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maintenanceStrategies: (() { final guardedValue = map['maintenanceStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetSpotOptionsMaintenanceStrategies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxTotalPrice: (() { final guardedValue = map['maxTotalPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTargetCapacity: (() { final guardedValue = map['minTargetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      singleAvailabilityZone: (() { final guardedValue = map['singleAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      singleInstanceType: (() { final guardedValue = map['singleInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

