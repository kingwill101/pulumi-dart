// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesAmplitude {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesAmplitude].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesAmplitude({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesAmplitude.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesAmplitude(
      object: map['object'] as String,
    );
  }
}
