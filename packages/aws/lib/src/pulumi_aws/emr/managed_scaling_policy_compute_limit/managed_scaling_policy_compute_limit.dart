// ignore_for_file: unused_element, unnecessary_cast

class ManagedScalingPolicyComputeLimit {
  /// The upper boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  final int maximumCapacityUnits;

  /// The upper boundary of EC2 units for core node type in a cluster. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The core units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between core and task nodes.
  final int? maximumCoreCapacityUnits;

  /// The upper boundary of On-Demand EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The On-Demand units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between On-Demand and Spot instances.
  final int? maximumOndemandCapacityUnits;

  /// The lower boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  final int minimumCapacityUnits;

  /// The unit type used for specifying a managed scaling policy. Valid Values: `InstanceFleetUnits` | `Instances` | `VCPU`
  final String unitType;

  ManagedScalingPolicyComputeLimit({
    required this.maximumCapacityUnits,
    this.maximumCoreCapacityUnits,
    this.maximumOndemandCapacityUnits,
    required this.minimumCapacityUnits,
    required this.unitType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximumCapacityUnits'] = maximumCapacityUnits;
    final maximumCoreCapacityUnitsValue = maximumCoreCapacityUnits;
    if (maximumCoreCapacityUnitsValue != null) {
      map['maximumCoreCapacityUnits'] = maximumCoreCapacityUnitsValue;
    }
    final maximumOndemandCapacityUnitsValue = maximumOndemandCapacityUnits;
    if (maximumOndemandCapacityUnitsValue != null) {
      map['maximumOndemandCapacityUnits'] = maximumOndemandCapacityUnitsValue;
    }
    map['minimumCapacityUnits'] = minimumCapacityUnits;
    map['unitType'] = unitType;
    return map;
  }

  factory ManagedScalingPolicyComputeLimit.fromMap(Map<String, dynamic> map) {
    return ManagedScalingPolicyComputeLimit(
      maximumCapacityUnits: map['maximumCapacityUnits'] as int,
      maximumCoreCapacityUnits: map['maximumCoreCapacityUnits'] == null
          ? null
          : map['maximumCoreCapacityUnits'] as int,
      maximumOndemandCapacityUnits: map['maximumOndemandCapacityUnits'] == null
          ? null
          : map['maximumOndemandCapacityUnits'] as int,
      minimumCapacityUnits: map['minimumCapacityUnits'] as int,
      unitType: map['unitType'] as String,
    );
  }
}
