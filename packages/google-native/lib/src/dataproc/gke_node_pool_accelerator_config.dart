// ignore_for_file: unused_element, unnecessary_cast

/// A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.
class GkeNodePoolAcceleratorConfig {
  /// The number of accelerator cards exposed to an instance.
  final String? acceleratorCount;

  /// The accelerator type resource namename (see GPUs on Compute Engine).
  final String? acceleratorType;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String? gpuPartitionSize;

  /// Creates a new [GkeNodePoolAcceleratorConfig].
  /// [acceleratorCount] The number of accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource namename (see GPUs on Compute Engine).
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  GkeNodePoolAcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuPartitionSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'gpuPartitionSize': ?gpuPartitionSize,
    };
  }

  factory GkeNodePoolAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolAcceleratorConfig(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      gpuPartitionSize: map['gpuPartitionSize'] == null
          ? null
          : map['gpuPartitionSize'] as String,
    );
  }
}
