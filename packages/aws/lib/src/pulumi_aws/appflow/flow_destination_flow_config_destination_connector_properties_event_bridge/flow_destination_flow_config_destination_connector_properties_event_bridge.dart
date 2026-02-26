// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_event_bridge_error_handling_config/flow_destination_flow_config_destination_connector_properties_event_bridge_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig?
      errorHandlingConfig;
  final String object;

  FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig
              .fromMap(
                  (map['errorHandlingConfig'] as Map).cast<String, dynamic>()),
      object: map['object'] as String,
    );
  }
}
