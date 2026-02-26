// ignore_for_file: unused_element, unnecessary_cast

class ClusterCapacityConfig {
  /// The memory to provision for the cluster in bytes. The value must be between 1 GiB and 8 GiB per vCPU. Ex. 1024Mi, 4Gi.
  final String memoryBytes;

  /// The number of vCPUs to provision for the cluster. The minimum is 3.
  final String vcpuCount;

  ClusterCapacityConfig({
    required this.memoryBytes,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['memoryBytes'] = memoryBytes;
    map['vcpuCount'] = vcpuCount;
    return map;
  }

  factory ClusterCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityConfig(
      memoryBytes: map['memoryBytes'] as String,
      vcpuCount: map['vcpuCount'] as String,
    );
  }
}
