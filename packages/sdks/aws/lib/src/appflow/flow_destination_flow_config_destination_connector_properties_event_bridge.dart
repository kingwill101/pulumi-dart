// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_event_bridge_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge].
  /// [errorHandlingConfig] Optional.
  /// [object_] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge({
    this.errorHandlingConfig,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'object': object_,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge(
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

