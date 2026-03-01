// ignore_for_file: unused_element, unnecessary_cast

import 'spot_fleet_request_spot_maintenance_strategies_capacity_rebalance.dart';

class SpotFleetRequestSpotMaintenanceStrategies {
  /// Nested argument containing the capacity rebalance for your fleet request. Defined below.
  final SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance?
  capacityRebalance;

  /// Creates a new [SpotFleetRequestSpotMaintenanceStrategies].
  /// [capacityRebalance] Nested argument containing the capacity rebalance for your fleet request. Defined below.
  SpotFleetRequestSpotMaintenanceStrategies({this.capacityRebalance});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityRebalance': ?capacityRebalance == null
          ? null
          : capacityRebalance!.toMap(),
    };
  }

  factory SpotFleetRequestSpotMaintenanceStrategies.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestSpotMaintenanceStrategies(
      capacityRebalance: map['capacityRebalance'] == null
          ? null
          : SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance.fromMap(
              (map['capacityRebalance'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
