// ignore_for_file: unused_element, unnecessary_cast

import '../fleet_spot_options_maintenance_strategies/fleet_spot_options_maintenance_strategies.dart';

class FleetSpotOptions {
  /// How to allocate the target capacity across the Spot pools. Valid values: <span pulumi-lang-nodejs="`diversified`" pulumi-lang-dotnet="`Diversified`" pulumi-lang-go="`diversified`" pulumi-lang-python="`diversified`" pulumi-lang-yaml="`diversified`" pulumi-lang-java="`diversified`">`diversified`</span>, `lowestPrice`, `capacity-optimized`, `capacity-optimized-prioritized` and `price-capacity-optimized`. Default: `lowestPrice`.
  final String? allocationStrategy;

  /// Behavior when a Spot Instance is interrupted. Valid values: <span pulumi-lang-nodejs="`hibernate`" pulumi-lang-dotnet="`Hibernate`" pulumi-lang-go="`hibernate`" pulumi-lang-python="`hibernate`" pulumi-lang-yaml="`hibernate`" pulumi-lang-java="`hibernate`">`hibernate`</span>, <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>, <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>. Default: <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  final String? instanceInterruptionBehavior;

  /// Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot <span pulumi-lang-nodejs="`allocationStrategy`" pulumi-lang-dotnet="`AllocationStrategy`" pulumi-lang-go="`allocationStrategy`" pulumi-lang-python="`allocation_strategy`" pulumi-lang-yaml="`allocationStrategy`" pulumi-lang-java="`allocationStrategy`">`allocation_strategy`</span> is set to `lowestPrice`. Default: <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? instancePoolsToUseCount;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final FleetSpotOptionsMaintenanceStrategies? maintenanceStrategies;

  /// The maximum amount per hour for Spot Instances that you're willing to pay.
  final String? maxTotalPrice;

  /// The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final int? minTargetCapacity;

  /// Indicates that the fleet launches all Spot Instances into a single Availability Zone. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final bool? singleAvailabilityZone;

  /// Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet. Supported only for fleets of type <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  final bool? singleInstanceType;

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
    final map = <String, dynamic>{};
    final allocationStrategyValue = allocationStrategy;
    if (allocationStrategyValue != null) {
      map['allocationStrategy'] = allocationStrategyValue;
    }
    final instanceInterruptionBehaviorValue = instanceInterruptionBehavior;
    if (instanceInterruptionBehaviorValue != null) {
      map['instanceInterruptionBehavior'] = instanceInterruptionBehaviorValue;
    }
    final instancePoolsToUseCountValue = instancePoolsToUseCount;
    if (instancePoolsToUseCountValue != null) {
      map['instancePoolsToUseCount'] = instancePoolsToUseCountValue;
    }
    final maintenanceStrategiesValue = maintenanceStrategies;
    if (maintenanceStrategiesValue != null) {
      map['maintenanceStrategies'] = maintenanceStrategiesValue.toMap();
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
              (map['maintenanceStrategies'] as Map).cast<String, dynamic>()),
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
