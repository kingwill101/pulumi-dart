// ignore_for_file: unused_element, unnecessary_cast

class FleetComputeConfiguration {
  /// Amount of disk space of the instance type included in the fleet.
  final int? disk;

  /// EC2 instance type to be launched in the fleet. Specify only if `compute_type` is set to `CUSTOM_INSTANCE_TYPE`. See [Supported instance families](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types).
  final String? instanceType;

  /// Machine type of the instance type included in the fleet. Valid values: `GENERAL`, `NVME`. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final String? machineType;

  /// Amount of memory of the instance type included in the fleet. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final int? memory;

  /// Number of vCPUs of the instance type included in the fleet. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  final int? vcpu;

  FleetComputeConfiguration({
    this.disk,
    this.instanceType,
    this.machineType,
    this.memory,
    this.vcpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskValue = disk;
    if (diskValue != null) {
      map['disk'] = diskValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final vcpuValue = vcpu;
    if (vcpuValue != null) {
      map['vcpu'] = vcpuValue;
    }
    return map;
  }

  factory FleetComputeConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetComputeConfiguration(
      disk: map['disk'] == null ? null : map['disk'] as int,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      memory: map['memory'] == null ? null : map['memory'] as int,
      vcpu: map['vcpu'] == null ? null : map['vcpu'] as int,
    );
  }
}
