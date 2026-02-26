// ignore_for_file: unused_element, unnecessary_cast

class V2VmAcceleratorConfig {
  /// Topology of TPU in chips.
  final String topology;

  /// Type of TPU. Please select one of the allowed types: https://cloud.google.com/tpu/docs/reference/rest/v2/AcceleratorConfig#Type
  final String type;

  V2VmAcceleratorConfig({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topology'] = topology;
    map['type'] = type;
    return map;
  }

  factory V2VmAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return V2VmAcceleratorConfig(
      topology: map['topology'] as String,
      type: map['type'] as String,
    );
  }
}
