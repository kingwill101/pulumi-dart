// ignore_for_file: unused_element, unnecessary_cast

class GetFleetComputeConfiguration {
  /// Amount of disk space of the instance type included in the fleet.
  final int disk;

  /// EC2 instance type in the fleet.
  final String instanceType;

  /// Machine type of the instance type included in the fleet.
  final String machineType;

  /// Amount of memory of the instance type included in the fleet.
  final int memory;

  /// Number of vCPUs of the instance type included in the fleet.
  final int vcpu;

  GetFleetComputeConfiguration({
    required this.disk,
    required this.instanceType,
    required this.machineType,
    required this.memory,
    required this.vcpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    map['instanceType'] = instanceType;
    map['machineType'] = machineType;
    map['memory'] = memory;
    map['vcpu'] = vcpu;
    return map;
  }

  factory GetFleetComputeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFleetComputeConfiguration(
      disk: map['disk'] as int,
      instanceType: map['instanceType'] as String,
      machineType: map['machineType'] as String,
      memory: map['memory'] as int,
      vcpu: map['vcpu'] as int,
    );
  }
}
