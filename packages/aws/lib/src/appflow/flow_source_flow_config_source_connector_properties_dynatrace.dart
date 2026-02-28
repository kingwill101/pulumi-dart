// ignore_for_file: unused_element, unnecessary_cast


class FlowSourceFlowConfigSourceConnectorPropertiesDynatrace {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDynatrace].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesDynatrace({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDynatrace(
      object: map['object'] as String,
    );
  }
}

