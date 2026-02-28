// ignore_for_file: unused_element, unnecessary_cast

/// A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.
class GkeNodePoolAcceleratorConfigResponse {
  /// The number of accelerator cards exposed to an instance.
  final String acceleratorCount;

  /// The accelerator type resource namename (see GPUs on Compute Engine).
  final String acceleratorType;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String gpuPartitionSize;

  /// Creates a new [GkeNodePoolAcceleratorConfigResponse].
  /// [acceleratorCount] The number of accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource namename (see GPUs on Compute Engine).
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  GkeNodePoolAcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuPartitionSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    map['gpuPartitionSize'] = gpuPartitionSize;
    return map;
  }

  factory GkeNodePoolAcceleratorConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GkeNodePoolAcceleratorConfigResponse(
      acceleratorCount: map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] as String,
      gpuPartitionSize: map['gpuPartitionSize'] as String,
    );
  }
}
