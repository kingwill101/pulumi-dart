// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config_response.dart';
import 'gpusharing_config_response.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigResponse4 {
  /// The number of the accelerator cards exposed to an instance.
  final String acceleratorCount;

  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final String acceleratorType;

  /// The configuration for auto installation of GPU driver.
  final GPUDriverInstallationConfigResponse gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String gpuPartitionSize;

  /// The configuration for GPU sharing options.
  final GPUSharingConfigResponse gpuSharingConfig;

  AcceleratorConfigResponse4({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuDriverInstallationConfig,
    required this.gpuPartitionSize,
    required this.gpuSharingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    map['gpuDriverInstallationConfig'] = gpuDriverInstallationConfig.toMap();
    map['gpuPartitionSize'] = gpuPartitionSize;
    map['gpuSharingConfig'] = gpuSharingConfig.toMap();
    return map;
  }

  factory AcceleratorConfigResponse4.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse4(
      acceleratorCount: map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] as String,
      gpuDriverInstallationConfig: GPUDriverInstallationConfigResponse.fromMap(
          (map['gpuDriverInstallationConfig'] as Map).cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] as String,
      gpuSharingConfig: GPUSharingConfigResponse.fromMap(
          (map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
