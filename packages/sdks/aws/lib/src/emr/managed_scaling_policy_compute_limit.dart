// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedScalingPolicyComputeLimit {
  /// The upper boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  final pulumi.Input<int> maximumCapacityUnits;
  /// The upper boundary of EC2 units for core node type in a cluster. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The core units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between core and task nodes.
  final pulumi.Input<int>? maximumCoreCapacityUnits;
  /// The upper boundary of On-Demand EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The On-Demand units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between On-Demand and Spot instances.
  final pulumi.Input<int>? maximumOndemandCapacityUnits;
  /// The lower boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  final pulumi.Input<int> minimumCapacityUnits;
  /// The unit type used for specifying a managed scaling policy. Valid Values: `InstanceFleetUnits` | `Instances` | `VCPU`
  final pulumi.Input<String> unitType;

  /// Creates a new [ManagedScalingPolicyComputeLimit].
  /// [maximumCapacityUnits] The upper boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  /// [maximumCoreCapacityUnits] The upper boundary of EC2 units for core node type in a cluster. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The core units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between core and task nodes.
  /// [maximumOndemandCapacityUnits] The upper boundary of On-Demand EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. The On-Demand units are not allowed to scale beyond this boundary. The parameter is used to split capacity allocation between On-Demand and Spot instances.
  /// [minimumCapacityUnits] The lower boundary of EC2 units. It is measured through VCPU cores or instances for instance groups and measured through units for instance fleets. Managed scaling activities are not allowed beyond this boundary. The limit only applies to the core and task nodes. The master node cannot be scaled after initial configuration.
  /// [unitType] The unit type used for specifying a managed scaling policy. Valid Values: `InstanceFleetUnits` | `Instances` | `VCPU`
  ManagedScalingPolicyComputeLimit({
    required this.maximumCapacityUnits,
    this.maximumCoreCapacityUnits,
    this.maximumOndemandCapacityUnits,
    required this.minimumCapacityUnits,
    required this.unitType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumCapacityUnits': maximumCapacityUnits,
      'maximumCoreCapacityUnits': ?maximumCoreCapacityUnits,
      'maximumOndemandCapacityUnits': ?maximumOndemandCapacityUnits,
      'minimumCapacityUnits': minimumCapacityUnits,
      'unitType': unitType,
    };
  }

  factory ManagedScalingPolicyComputeLimit.fromMap(Map<String, dynamic> map) {
    return ManagedScalingPolicyComputeLimit(
      maximumCapacityUnits: (map['maximumCapacityUnits'] as int).input(),
      maximumCoreCapacityUnits: map['maximumCoreCapacityUnits'] == null ? null : (map['maximumCoreCapacityUnits'] as int).input(),
      maximumOndemandCapacityUnits: map['maximumOndemandCapacityUnits'] == null ? null : (map['maximumOndemandCapacityUnits'] as int).input(),
      minimumCapacityUnits: (map['minimumCapacityUnits'] as int).input(),
      unitType: (map['unitType'] as String).input(),
    );
  }
}

