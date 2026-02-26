// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMachineConfig {
  /// The number of CPU's in the VM instance.
  final int cpuCount;

  /// Machine type of the VM instance.
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
  /// 'cpu_count' must match the number of vCPUs in the machine type.
  final String machineType;

  GetInstanceMachineConfig({
    required this.cpuCount,
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    map['machineType'] = machineType;
    return map;
  }

  factory GetInstanceMachineConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceMachineConfig(
      cpuCount: map['cpuCount'] as int,
      machineType: map['machineType'] as String,
    );
  }
}
