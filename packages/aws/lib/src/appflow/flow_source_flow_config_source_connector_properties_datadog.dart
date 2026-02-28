// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesDatadog {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDatadog].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesDatadog({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDatadog(
      object: map['object'] as String,
    );
  }
}
