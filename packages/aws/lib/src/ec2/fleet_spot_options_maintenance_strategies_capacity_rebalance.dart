// ignore_for_file: unused_element, unnecessary_cast

class FleetSpotOptionsMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for fleets of `type` set to `maintain`. Valid values: `launch`.
  final String? replacementStrategy;
  final int? terminationDelay;

  /// Creates a new [FleetSpotOptionsMaintenanceStrategiesCapacityRebalance].
  /// [replacementStrategy] The replacement strategy to use. Only available for fleets of `type` set to `maintain`. Valid values: `launch`.
  /// [terminationDelay] Optional.
  FleetSpotOptionsMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
    this.terminationDelay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replacementStrategyValue = replacementStrategy;
    if (replacementStrategyValue != null) {
      map['replacementStrategy'] = replacementStrategyValue;
    }
    final terminationDelayValue = terminationDelay;
    if (terminationDelayValue != null) {
      map['terminationDelay'] = terminationDelayValue;
    }
    return map;
  }

  factory FleetSpotOptionsMaintenanceStrategiesCapacityRebalance.fromMap(
      Map<String, dynamic> map) {
    return FleetSpotOptionsMaintenanceStrategiesCapacityRebalance(
      replacementStrategy: map['replacementStrategy'] == null
          ? null
          : map['replacementStrategy'] as String,
      terminationDelay: map['terminationDelay'] == null
          ? null
          : map['terminationDelay'] as int,
    );
  }
}
