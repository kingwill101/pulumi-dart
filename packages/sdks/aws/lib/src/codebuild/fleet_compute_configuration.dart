// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetComputeConfiguration {
  /// Amount of disk space of the instance type included in the fleet.
  final pulumi.Input<int?>? disk;
  /// EC2 instance type to be launched in the fleet. Specify only if `computeType` is set to `CUSTOM_INSTANCE_TYPE`. See [Supported instance families](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types).
  final pulumi.Input<String?>? instanceType;
  /// Machine type of the instance type included in the fleet. Valid values: `GENERAL`, `NVME`. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final pulumi.Input<String?>? machineType;
  /// Amount of memory of the instance type included in the fleet. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final pulumi.Input<int?>? memory;
  /// Number of vCPUs of the instance type included in the fleet. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final pulumi.Input<int?>? vcpu;

  /// Creates a new [FleetComputeConfiguration].
  /// [disk] Amount of disk space of the instance type included in the fleet.
  /// [instanceType] EC2 instance type to be launched in the fleet. Specify only if `computeType` is set to `CUSTOM_INSTANCE_TYPE`. See [Supported instance families](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types).
  /// [machineType] Machine type of the instance type included in the fleet. Valid values: `GENERAL`, `NVME`. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  /// [memory] Amount of memory of the instance type included in the fleet. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  /// [vcpu] Number of vCPUs of the instance type included in the fleet. Specify only if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
  const FleetComputeConfiguration({
    this.disk,
    this.instanceType,
    this.machineType,
    this.memory,
    this.vcpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': ?disk,
      'instanceType': ?instanceType,
      'machineType': ?machineType,
      'memory': ?memory,
      'vcpu': ?vcpu,
    };
  }

  factory FleetComputeConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetComputeConfiguration(
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vcpu: (() { final guardedValue = map['vcpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
