// ignore_for_file: unused_element, unnecessary_cast

/// Definition of the types of hardware accelerators that can be used. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`
class RuntimeAcceleratorConfigResponse {
  /// Count of cores of this accelerator.
  final String coreCount;

  /// Accelerator model.
  final String type;

  RuntimeAcceleratorConfigResponse({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreCount'] = coreCount;
    map['type'] = type;
    return map;
  }

  factory RuntimeAcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeAcceleratorConfigResponse(
      coreCount: map['coreCount'] as String,
      type: map['type'] as String,
    );
  }
}
