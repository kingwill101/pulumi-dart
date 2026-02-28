// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesMarketo {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesMarketo].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesMarketo({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesMarketo.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesMarketo(
      object: map['object'] as String,
    );
  }
}
