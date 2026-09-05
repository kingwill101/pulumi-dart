// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector {
  final pulumi.Input<Map<String, String>?>? customProperties;
  final pulumi.Input<String> entityName;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector].
  /// [customProperties] Optional.
  /// [entityName] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?customProperties,
      'entityName': entityName,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector(
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
    );
  }
}
