// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetSpotOptionsMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for fleets of `type` set to `maintain`. Valid values: `launch`.
  final pulumi.Input<String>? replacementStrategy;
  final pulumi.Input<int>? terminationDelay;

  /// Creates a new [FleetSpotOptionsMaintenanceStrategiesCapacityRebalance].
  /// [replacementStrategy] The replacement strategy to use. Only available for fleets of `type` set to `maintain`. Valid values: `launch`.
  /// [terminationDelay] Optional.
  FleetSpotOptionsMaintenanceStrategiesCapacityRebalance({
    this.replacementStrategy,
    this.terminationDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replacementStrategy': ?replacementStrategy,
      'terminationDelay': ?terminationDelay,
    };
  }

  factory FleetSpotOptionsMaintenanceStrategiesCapacityRebalance.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetSpotOptionsMaintenanceStrategiesCapacityRebalance(
      replacementStrategy: (() {
        final guardedValue = map['replacementStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terminationDelay: (() {
        final guardedValue = map['terminationDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
