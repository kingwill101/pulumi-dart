// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSingular {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSingular].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSingular({required this.object});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSingular.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSingular(
      object: map['object'] as String,
    );
  }
}
