// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_event_bridge_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge].
  /// [errorHandlingConfig] Optional.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge({
    this.errorHandlingConfig,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge(
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      object: (map['object'] as String).input(),
    );
  }
}

