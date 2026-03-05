// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_marketo_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo].
  /// [errorHandlingConfig] Optional.
  /// [object_] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo({
    this.errorHandlingConfig,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'object': object_,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo(
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

