// ignore_for_file: unused_element, unnecessary_cast

/// A TPU accelerator configuration.
class AcceleratorConfigResponse11 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final String type;

  AcceleratorConfigResponse11({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type;
    return map;
  }

  factory AcceleratorConfigResponse11.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse11(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
