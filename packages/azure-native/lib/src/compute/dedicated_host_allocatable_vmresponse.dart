// ignore_for_file: unused_element, unnecessary_cast


/// Represents the dedicated host unutilized capacity in terms of a specific VM size.
class DedicatedHostAllocatableVMResponse {
  /// Maximum number of VMs of size vmSize that can fit in the dedicated host's remaining capacity.
  final double? count;
  /// VM size in terms of which the unutilized capacity is represented.
  final String? vmSize;

  /// Creates a new [DedicatedHostAllocatableVMResponse].
  /// [count] Maximum number of VMs of size vmSize that can fit in the dedicated host's remaining capacity.
  /// [vmSize] VM size in terms of which the unutilized capacity is represented.
  DedicatedHostAllocatableVMResponse({
    this.count,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'vmSize': ?vmSize,
    };
  }

  factory DedicatedHostAllocatableVMResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostAllocatableVMResponse(
      count: map['count'] == null ? null : map['count'] as double,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

