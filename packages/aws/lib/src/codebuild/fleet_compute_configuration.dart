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

  /// Creates a new [FleetComputeConfiguration].
  /// [disk] Amount of disk space of the instance type included in the fleet.
  /// [instanceType] EC2 instance type to be launched in the fleet. Specify only if `compute_type` is set to `CUSTOM_INSTANCE_TYPE`. See [Supported instance families](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types).
  /// [machineType] Machine type of the instance type included in the fleet. Valid values: `GENERAL`, `NVME`. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  /// [memory] Amount of memory of the instance type included in the fleet. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  /// [vcpu] Number of vCPUs of the instance type included in the fleet. Specify only if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE`.
  FleetComputeConfiguration({
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
      disk: map['disk'] == null ? null : map['disk'] as int,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      memory: map['memory'] == null ? null : map['memory'] as int,
      vcpu: map['vcpu'] == null ? null : map['vcpu'] as int,
    );
  }
}

