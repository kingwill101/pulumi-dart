// ignore_for_file: unused_element, unnecessary_cast

/// A TPU accelerator configuration.
class AcceleratorConfigResponse {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU.
  final String type;

  /// Creates a new [AcceleratorConfigResponse].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfigResponse({required this.topology, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topology': topology, 'type': type};
  }

  factory AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
