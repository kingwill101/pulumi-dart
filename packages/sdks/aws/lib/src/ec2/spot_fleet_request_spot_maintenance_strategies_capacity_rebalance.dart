// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for spot fleets with `fleet_type` set to `maintain`. Valid values: `launch`.
  final pulumi.Input<String>? replacementStrategy;

  /// Creates a new [SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance].
  /// [replacementStrategy] The replacement strategy to use. Only available for spot fleets with `fleet_type` set to `maintain`. Valid values: `launch`.
  SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'replacementStrategy': ?replacementStrategy};
  }

  factory SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance(
      replacementStrategy: (() {
        final guardedValue = map['replacementStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
