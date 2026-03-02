// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  final pulumi.Input<String> allocationStrategy;

  /// Creates a new [ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification].
  /// [allocationStrategy] Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
    };
  }

  factory ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: (map['allocationStrategy'] as String).input(),
    );
  }
}

