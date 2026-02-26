// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics {
  final String object;

  FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['object'] = object;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics(
      object: map['object'] as String,
    );
  }
}
