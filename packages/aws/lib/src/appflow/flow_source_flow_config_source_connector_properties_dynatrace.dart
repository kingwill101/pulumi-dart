// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesDynatrace {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDynatrace].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesDynatrace({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDynatrace(
      object: map['object'] as String,
    );
  }
}
