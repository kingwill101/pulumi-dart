// ignore_for_file: unused_element, unnecessary_cast

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.
class AcceleratorConfigResponse {
  /// Count of cores of this accelerator.
  final String coreCount;

  /// Type of this accelerator.
  final String type;

  /// Creates a new [AcceleratorConfigResponse].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  AcceleratorConfigResponse({required this.coreCount, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'coreCount': coreCount, 'type': type};
  }

  factory AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse(
      coreCount: map['coreCount'] as String,
      type: map['type'] as String,
    );
  }
}
