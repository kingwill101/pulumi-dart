// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_accelerator_config_type.dart';

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfig {
  /// Count of cores of this accelerator.
  final String? coreCount;

  /// Type of this accelerator.
  final SchedulerAcceleratorConfigType? type;

  /// Creates a new [SchedulerAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  SchedulerAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coreCountValue = coreCount;
    if (coreCountValue != null) {
      map['coreCount'] = coreCountValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory SchedulerAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return SchedulerAcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null
          ? null
          : SchedulerAcceleratorConfigType.fromValue(map['type'] as String),
    );
  }
}
