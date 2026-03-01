// ignore_for_file: unused_element, unnecessary_cast


class FlowSourceFlowConfigSourceConnectorPropertiesZendesk {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesZendesk].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesZendesk({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesZendesk(
      object: map['object'] as String,
    );
  }
}

