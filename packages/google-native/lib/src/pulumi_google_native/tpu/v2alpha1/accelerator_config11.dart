// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type4.dart';

/// A TPU accelerator configuration.
class AcceleratorConfig11 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final AcceleratorConfigType4 type;

  AcceleratorConfig11({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type.value;
    return map;
  }

  factory AcceleratorConfig11.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig11(
      topology: map['topology'] as String,
      type: AcceleratorConfigType4.fromValue(map['type'] as String),
    );
  }
}
