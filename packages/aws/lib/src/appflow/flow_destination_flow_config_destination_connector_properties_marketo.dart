// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_marketo_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig?
  errorHandlingConfig;
  final String object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo].
  /// [errorHandlingConfig] Optional.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      object: map['object'] as String,
    );
  }
}
