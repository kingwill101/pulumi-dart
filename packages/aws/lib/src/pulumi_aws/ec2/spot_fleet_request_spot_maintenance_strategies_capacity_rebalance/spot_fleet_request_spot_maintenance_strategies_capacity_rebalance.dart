// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for spot fleets with <span pulumi-lang-nodejs="`fleetType`" pulumi-lang-dotnet="`FleetType`" pulumi-lang-go="`fleetType`" pulumi-lang-python="`fleet_type`" pulumi-lang-yaml="`fleetType`" pulumi-lang-java="`fleetType`">`fleet_type`</span> set to <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>. Valid values: <span pulumi-lang-nodejs="`launch`" pulumi-lang-dotnet="`Launch`" pulumi-lang-go="`launch`" pulumi-lang-python="`launch`" pulumi-lang-yaml="`launch`" pulumi-lang-java="`launch`">`launch`</span>.
  final String? replacementStrategy;

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
