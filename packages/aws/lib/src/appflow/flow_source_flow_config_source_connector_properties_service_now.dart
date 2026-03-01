// ignore_for_file: unused_element, unnecessary_cast


class FlowSourceFlowConfigSourceConnectorPropertiesServiceNow {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesServiceNow].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesServiceNow({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesServiceNow.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesServiceNow(
      object: map['object'] as String,
    );
  }
}

