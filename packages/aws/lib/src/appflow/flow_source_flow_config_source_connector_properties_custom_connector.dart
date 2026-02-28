// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector {
  final Map<String, String>? customProperties;
  final String entityName;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector].
  /// [customProperties] Optional.
  /// [entityName] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPropertiesValue = customProperties;
    if (customPropertiesValue != null) {
      map['customProperties'] = customPropertiesValue;
    }
    map['entityName'] = entityName;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector(
      customProperties: map['customProperties'] == null
          ? null
          : (map['customProperties'] as Map).cast<String, String>(),
      entityName: map['entityName'] as String,
    );
  }
}
