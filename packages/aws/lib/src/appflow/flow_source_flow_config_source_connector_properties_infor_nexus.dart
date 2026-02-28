// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesInforNexus {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesInforNexus].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesInforNexus({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesInforNexus(
      object: map['object'] as String,
    );
  }
}
