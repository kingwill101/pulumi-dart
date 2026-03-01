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
    return <String, dynamic>{
      'errorHandlingConfig': ?errorHandlingConfig == null
          ? null
          : errorHandlingConfig!.toMap(),
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      object: map['object'] as String,
    );
  }
}
