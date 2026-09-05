// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_marketo_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo {
  /// Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig?>? errorHandlingConfig;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo].
  /// [errorHandlingConfig] Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  /// [object_] Required.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo({
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
