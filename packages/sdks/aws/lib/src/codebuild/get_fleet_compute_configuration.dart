// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFleetComputeConfiguration {
  /// Amount of disk space of the instance type included in the fleet.
  final pulumi.Input<int> disk;
  /// EC2 instance type in the fleet.
  final pulumi.Input<String> instanceType;
  /// Machine type of the instance type included in the fleet.
  final pulumi.Input<String> machineType;
  /// Amount of memory of the instance type included in the fleet.
  final pulumi.Input<int> memory;
  /// Number of vCPUs of the instance type included in the fleet.
  final pulumi.Input<int> vcpu;

  /// Creates a new [GetFleetComputeConfiguration].
  /// [disk] Amount of disk space of the instance type included in the fleet.
  /// [instanceType] EC2 instance type in the fleet.
  /// [machineType] Machine type of the instance type included in the fleet.
  /// [memory] Amount of memory of the instance type included in the fleet.
  /// [vcpu] Number of vCPUs of the instance type included in the fleet.
  const GetFleetComputeConfiguration({
    required this.disk,
    required this.instanceType,
    required this.machineType,
    required this.memory,
    required this.vcpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'instanceType': instanceType,
      'machineType': machineType,
      'memory': memory,
      'vcpu': vcpu,
    };
  }

  factory GetFleetComputeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFleetComputeConfiguration(
      disk: pulumi.Input.fromValue((map['disk'] as num).toInt()),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      memory: pulumi.Input.fromValue((map['memory'] as num).toInt()),
      vcpu: pulumi.Input.fromValue((map['vcpu'] as num).toInt()),
    );
  }
}
