// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_event_bridge_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig?
  errorHandlingConfig;
  final String object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge].
  /// [errorHandlingConfig] Optional.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge({
    this.errorHandlingConfig,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?errorHandlingConfig == null
          ? null
          : errorHandlingConfig!.toMap(),
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      object: map['object'] as String,
    );
  }
}
