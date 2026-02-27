// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type_tpu_v2.dart';

/// A TPU accelerator configuration.
class AcceleratorConfigTpuV2 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final AcceleratorConfigTypeTpuV2 type;

  AcceleratorConfigTpuV2({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type.value;
    return map;
  }

  factory AcceleratorConfigTpuV2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigTpuV2(
      topology: map['topology'] as String,
      type: AcceleratorConfigTypeTpuV2.fromValue(map['type'] as String),
    );
  }
}
