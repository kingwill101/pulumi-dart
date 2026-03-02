// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_marketo_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo].
  /// [errorHandlingConfig] Optional.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo({
    this.errorHandlingConfig,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo(
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : ((FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig.fromMap((map['errorHandlingConfig']! as Map).cast<String, dynamic>())).input()).input(),
      object: (map['object'] as String).input(),
    );
  }
}

