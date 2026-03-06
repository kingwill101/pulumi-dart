// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupAvailabilityZoneDistribution {
  /// The strategy to use for distributing capacity across the Availability Zones. Valid values are `balanced-only` and `balanced-best-effort`. Default is `balanced-best-effort`.
  final pulumi.Input<String>? capacityDistributionStrategy;

  /// Creates a new [GroupAvailabilityZoneDistribution].
  /// [capacityDistributionStrategy] The strategy to use for distributing capacity across the Availability Zones. Valid values are `balanced-only` and `balanced-best-effort`. Default is `balanced-best-effort`.
  const GroupAvailabilityZoneDistribution({
    this.capacityDistributionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityDistributionStrategy': ?capacityDistributionStrategy,
    };
  }

  factory GroupAvailabilityZoneDistribution.fromMap(Map<String, dynamic> map) {
    return GroupAvailabilityZoneDistribution(
      capacityDistributionStrategy: (() { final guardedValue = map['capacityDistributionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

