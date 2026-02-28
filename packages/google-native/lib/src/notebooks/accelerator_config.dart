// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type.dart';

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.
class AcceleratorConfig {
  /// Count of cores of this accelerator.
  final String? coreCount;
  /// Type of this accelerator.
  final AcceleratorConfigType? type;

  /// Creates a new [AcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  AcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null ? null : AcceleratorConfigType.fromValue(map['type'] as String),
    );
  }
}

