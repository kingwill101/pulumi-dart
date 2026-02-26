// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type3.dart';

/// A TPU accelerator configuration.
class AcceleratorConfig10 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final AcceleratorConfigType3 type;

  AcceleratorConfig10({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type.value;
    return map;
  }

  factory AcceleratorConfig10.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig10(
      topology: map['topology'] as String,
      type: AcceleratorConfigType3.fromValue(map['type'] as String),
    );
  }
}
