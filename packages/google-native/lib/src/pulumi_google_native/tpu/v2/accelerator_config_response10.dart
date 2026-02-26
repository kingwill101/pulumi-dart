// ignore_for_file: unused_element, unnecessary_cast

/// A TPU accelerator configuration.
class AcceleratorConfigResponse10 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final String type;

  AcceleratorConfigResponse10({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type;
    return map;
  }

  factory AcceleratorConfigResponse10.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse10(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
