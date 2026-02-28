// ignore_for_file: unused_element, unnecessary_cast

class ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  final String allocationStrategy;

  /// Creates a new [ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification].
  /// [allocationStrategy] Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationStrategy'] = allocationStrategy;
    return map;
  }

  factory ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(
      Map<String, dynamic> map) {
    return ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: map['allocationStrategy'] as String,
    );
  }
}
