// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_spot_options_maintenance_strategies_capacity_rebalance.dart';

class FleetSpotOptionsMaintenanceStrategies {
  /// Nested argument containing the capacity rebalance for your fleet request. Defined below.
  final FleetSpotOptionsMaintenanceStrategiesCapacityRebalance?
      capacityRebalance;

  /// Creates a new [FleetSpotOptionsMaintenanceStrategies].
  /// [capacityRebalance] Nested argument containing the capacity rebalance for your fleet request. Defined below.
  FleetSpotOptionsMaintenanceStrategies({
    this.capacityRebalance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityRebalanceValue = capacityRebalance;
    if (capacityRebalanceValue != null) {
      map['capacityRebalance'] = capacityRebalanceValue.toMap();
    }
    return map;
  }

  factory FleetSpotOptionsMaintenanceStrategies.fromMap(
      Map<String, dynamic> map) {
    return FleetSpotOptionsMaintenanceStrategies(
      capacityRebalance: map['capacityRebalance'] == null
          ? null
          : FleetSpotOptionsMaintenanceStrategiesCapacityRebalance.fromMap(
              (map['capacityRebalance'] as Map).cast<String, dynamic>()),
    );
  }
}
