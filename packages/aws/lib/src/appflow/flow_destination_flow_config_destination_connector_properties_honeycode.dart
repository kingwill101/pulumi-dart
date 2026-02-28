// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_honeycode_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig?
      errorHandlingConfig;
  final String object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode].
  /// [errorHandlingConfig] Optional.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode({
    this.errorHandlingConfig,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorHandlingConfigValue = errorHandlingConfig;
    if (errorHandlingConfigValue != null) {
      map['errorHandlingConfig'] = errorHandlingConfigValue.toMap();
    }
    map['object'] = object;
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig
              .fromMap(
                  (map['errorHandlingConfig'] as Map).cast<String, dynamic>()),
      object: map['object'] as String,
    );
  }
}
