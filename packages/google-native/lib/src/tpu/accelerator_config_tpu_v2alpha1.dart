// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type_tpu_v2alpha1.dart';

/// A TPU accelerator configuration.
class AcceleratorConfigTpuV2alpha1 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final AcceleratorConfigTypeTpuV2alpha1 type;

  /// Creates a new [AcceleratorConfigTpuV2alpha1].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfigTpuV2alpha1({required this.topology, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topology': topology, 'type': type.value};
  }

  factory AcceleratorConfigTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigTpuV2alpha1(
      topology: map['topology'] as String,
      type: AcceleratorConfigTypeTpuV2alpha1.fromValue(map['type'] as String),
    );
  }
}
