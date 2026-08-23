// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  final pulumi.Input<String> allocationStrategy;

  /// Creates a new [InstanceFleetLaunchSpecificationsOnDemandSpecification].
  /// [allocationStrategy] Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is `lowest-price` (the default), which launches the lowest price first.
  const InstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
    };
  }

  factory InstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
    );
  }
}
