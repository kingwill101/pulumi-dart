// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_spot_maintenance_strategies_capacity_rebalance.dart';

class SpotFleetRequestSpotMaintenanceStrategies {
  /// Nested argument containing the capacity rebalance for your fleet request. Defined below.
  final pulumi.Input<SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance>? capacityRebalance;

  /// Creates a new [SpotFleetRequestSpotMaintenanceStrategies].
  /// [capacityRebalance] Nested argument containing the capacity rebalance for your fleet request. Defined below.
  SpotFleetRequestSpotMaintenanceStrategies({
    this.capacityRebalance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityRebalance': ?pulumi.Input.mapOptionalInputValue<SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance, Map<String, dynamic>>(capacityRebalance, (value) => value.toMap()),
    };
  }

  factory SpotFleetRequestSpotMaintenanceStrategies.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestSpotMaintenanceStrategies(
      capacityRebalance: (() { final guardedValue = map['capacityRebalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

