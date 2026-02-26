// ignore_for_file: unused_element, unnecessary_cast

class FleetSpotOptionsMaintenanceStrategiesCapacityRebalance {
  /// The replacement strategy to use. Only available for fleets of <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> set to <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>. Valid values: <span pulumi-lang-nodejs="`launch`" pulumi-lang-dotnet="`Launch`" pulumi-lang-go="`launch`" pulumi-lang-python="`launch`" pulumi-lang-yaml="`launch`" pulumi-lang-java="`launch`">`launch`</span>.
  final String? replacementStrategy;
  final int? terminationDelay;

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
