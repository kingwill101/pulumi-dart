// ignore_for_file: unused_element, unnecessary_cast

/// A TPU accelerator configuration.
class AcceleratorConfigResponseTpuV2 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final String type;

  AcceleratorConfigResponseTpuV2({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type;
    return map;
  }

  factory AcceleratorConfigResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponseTpuV2(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
