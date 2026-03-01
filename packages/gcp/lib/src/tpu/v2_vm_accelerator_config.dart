// ignore_for_file: unused_element, unnecessary_cast

class V2VmAcceleratorConfig {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU. Please select one of the allowed types: https://cloud.google.com/tpu/docs/reference/rest/v2/AcceleratorConfig#Type
  final String type;

  /// Creates a new [V2VmAcceleratorConfig].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU. Please select one of the allowed types: https://cloud.google.com/tpu/docs/reference/rest/v2/AcceleratorConfig#Type
  V2VmAcceleratorConfig({required this.topology, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topology': topology, 'type': type};
  }

  factory V2VmAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return V2VmAcceleratorConfig(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
