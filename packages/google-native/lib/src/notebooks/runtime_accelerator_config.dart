// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_accelerator_config_type.dart';

/// Definition of the types of hardware accelerators that can be used. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`
class RuntimeAcceleratorConfig {
  /// Count of cores of this accelerator.
  final String? coreCount;

  /// Accelerator model.
  final RuntimeAcceleratorConfigType? type;

  /// Creates a new [RuntimeAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Accelerator model.
  RuntimeAcceleratorConfig({this.coreCount, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory RuntimeAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null
          ? null
          : RuntimeAcceleratorConfigType.fromValue(map['type'] as String),
    );
  }
}
