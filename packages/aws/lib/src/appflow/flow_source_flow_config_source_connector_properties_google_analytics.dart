// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics {
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics(
      object: map['object'] as String,
    );
  }
}
