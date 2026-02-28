// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  final String allocationStrategy;

  /// Creates a new [ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification].
  /// [allocationStrategy] Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationStrategy'] = allocationStrategy;
    return map;
  }

  factory ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(
      Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: map['allocationStrategy'] as String,
    );
  }
}
