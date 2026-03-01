// ignore_for_file: unused_element, unnecessary_cast

class InstanceMachineConfig {
  /// The number of CPU's in the VM instance.
  final int? cpuCount;

  /// Machine type of the VM instance.
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
  /// `cpu_count` must match the number of vCPUs in the machine type.
  final String? machineType;

  /// Creates a new [InstanceMachineConfig].
  /// [cpuCount] The number of CPU's in the VM instance.
  /// [machineType] Machine type of the VM instance.
  InstanceMachineConfig({this.cpuCount, this.machineType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'machineType': ?machineType,
    };
  }

  factory InstanceMachineConfig.fromMap(Map<String, dynamic> map) {
    return InstanceMachineConfig(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
    );
  }
}
