// ignore_for_file: unused_element, unnecessary_cast


class FlowSourceFlowConfigSourceConnectorPropertiesDatadog {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDatadog].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesDatadog({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDatadog(
      object: map['object'] as String,
    );
  }
}

