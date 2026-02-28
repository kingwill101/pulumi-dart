// ignore_for_file: unused_element, unnecessary_cast

/// A TPU accelerator configuration.
class AcceleratorConfigResponseTpuV2alpha1 {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final String type;

  /// Creates a new [AcceleratorConfigResponseTpuV2alpha1].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfigResponseTpuV2alpha1({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type;
    return map;
  }

  factory AcceleratorConfigResponseTpuV2alpha1.fromMap(
      Map<String, dynamic> map) {
    return AcceleratorConfigResponseTpuV2alpha1(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
