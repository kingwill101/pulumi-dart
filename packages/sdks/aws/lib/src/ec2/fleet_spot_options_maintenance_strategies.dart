// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_spot_options_maintenance_strategies_capacity_rebalance.dart';

class FleetSpotOptionsMaintenanceStrategies {
  /// Nested argument containing the capacity rebalance for your fleet request. Defined below.
  final pulumi.Input<FleetSpotOptionsMaintenanceStrategiesCapacityRebalance?>? capacityRebalance;

  /// Creates a new [FleetSpotOptionsMaintenanceStrategies].
  /// [capacityRebalance] Nested argument containing the capacity rebalance for your fleet request. Defined below.
  const FleetSpotOptionsMaintenanceStrategies({
    this.capacityRebalance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityRebalance': ?pulumi.Input.mapOptionalInputValue<FleetSpotOptionsMaintenanceStrategiesCapacityRebalance, Map<String, dynamic>>(capacityRebalance, (value) => value.toMap()),
    };
  }

  factory FleetSpotOptionsMaintenanceStrategies.fromMap(Map<String, dynamic> map) {
    return FleetSpotOptionsMaintenanceStrategies(
      capacityRebalance: (() { final guardedValue = map['capacityRebalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetSpotOptionsMaintenanceStrategiesCapacityRebalance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
