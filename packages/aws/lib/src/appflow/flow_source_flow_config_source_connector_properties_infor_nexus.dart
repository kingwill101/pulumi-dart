// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesInforNexus {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesInforNexus].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesInforNexus({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesInforNexus(
      object: map['object'] as String,
    );
  }
}
