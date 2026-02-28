// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSlack {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSlack].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSlack({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSlack(
      object: map['object'] as String,
    );
  }
}
