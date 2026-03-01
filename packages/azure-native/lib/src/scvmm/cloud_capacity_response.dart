// ignore_for_file: unused_element, unnecessary_cast


/// Cloud Capacity model
class CloudCapacityResponse {
  /// CPUCount specifies the maximum number of CPUs that can be allocated in the cloud.
  final double? cpuCount;
  /// MemoryMB specifies a memory usage limit in megabytes.
  final double? memoryMB;
  /// VMCount gives the max number of VMs that can be deployed in the cloud.
  final double? vmCount;

  /// Creates a new [CloudCapacityResponse].
  /// [cpuCount] CPUCount specifies the maximum number of CPUs that can be allocated in the cloud.
  /// [memoryMB] MemoryMB specifies a memory usage limit in megabytes.
  /// [vmCount] VMCount gives the max number of VMs that can be deployed in the cloud.
  CloudCapacityResponse({
    this.cpuCount,
    this.memoryMB,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'memoryMB': ?memoryMB,
      'vmCount': ?vmCount,
    };
  }

  factory CloudCapacityResponse.fromMap(Map<String, dynamic> map) {
    return CloudCapacityResponse(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as double,
      memoryMB: map['memoryMB'] == null ? null : map['memoryMB'] as double,
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as double,
    );
  }
}

