// ignore_for_file: unused_element, unnecessary_cast

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfigResponseContainerV1beta1 {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final String gpuSharingStrategy;

  /// The max number of containers that can share a physical GPU.
  final String maxSharedClientsPerGpu;

  /// Creates a new [GPUSharingConfigResponseContainerV1beta1].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The max number of containers that can share a physical GPU.
  GPUSharingConfigResponseContainerV1beta1({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuSharingStrategy'] = gpuSharingStrategy;
    map['maxSharedClientsPerGpu'] = maxSharedClientsPerGpu;
    return map;
  }

  factory GPUSharingConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GPUSharingConfigResponseContainerV1beta1(
      gpuSharingStrategy: map['gpuSharingStrategy'] as String,
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] as String,
    );
  }
}
