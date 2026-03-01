// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSlack {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSlack].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSlack({required this.object});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSlack(
      object: map['object'] as String,
    );
  }
}
