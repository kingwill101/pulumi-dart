// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type.dart';

/// A TPU accelerator configuration.
class AcceleratorConfig {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final AcceleratorConfigType type;

  /// Creates a new [AcceleratorConfig].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfig({required this.topology, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topology': topology, 'type': type.value};
  }

  factory AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig(
      topology: map['topology'] as String,
      type: AcceleratorConfigType.fromValue(map['type'] as String),
    );
  }
}
