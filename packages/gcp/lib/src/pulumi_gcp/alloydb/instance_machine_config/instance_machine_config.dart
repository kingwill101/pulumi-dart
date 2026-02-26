// ignore_for_file: unused_element, unnecessary_cast

class InstanceMachineConfig {
  /// The number of CPU's in the VM instance.
  final int? cpuCount;

  /// Machine type of the VM instance.
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
  /// <span pulumi-lang-nodejs="`cpuCount`" pulumi-lang-dotnet="`CpuCount`" pulumi-lang-go="`cpuCount`" pulumi-lang-python="`cpu_count`" pulumi-lang-yaml="`cpuCount`" pulumi-lang-java="`cpuCount`">`cpu_count`</span> must match the number of vCPUs in the machine type.
  final String? machineType;

  InstanceMachineConfig({
    this.cpuCount,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuCountValue = cpuCount;
    if (cpuCountValue != null) {
      map['cpuCount'] = cpuCountValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    return map;
  }

  factory InstanceMachineConfig.fromMap(Map<String, dynamic> map) {
    return InstanceMachineConfig(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}
