// ignore_for_file: unused_element, unnecessary_cast

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfigResponse {
  /// Count of cores of this accelerator.
  final String coreCount;

  /// Type of this accelerator.
  final String type;

  SchedulerAcceleratorConfigResponse({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreCount'] = coreCount;
    map['type'] = type;
    return map;
  }

  factory SchedulerAcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerAcceleratorConfigResponse(
      coreCount: map['coreCount'] as String,
      type: map['type'] as String,
    );
  }
}
