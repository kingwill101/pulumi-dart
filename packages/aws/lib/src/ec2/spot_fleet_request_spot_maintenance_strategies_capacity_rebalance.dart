// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for spot fleets with `fleet_type` set to `maintain`. Valid values: `launch`.
  final String? replacementStrategy;

  /// Creates a new [SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance].
  /// [replacementStrategy] The replacement strategy to use. Only available for spot fleets with `fleet_type` set to `maintain`. Valid values: `launch`.
  SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replacementStrategyValue = replacementStrategy;
    if (replacementStrategyValue != null) {
      map['replacementStrategy'] = replacementStrategyValue;
    }
    return map;
  }

  factory SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance(
      replacementStrategy: map['replacementStrategy'] == null
          ? null
          : map['replacementStrategy'] as String,
    );
  }
}
