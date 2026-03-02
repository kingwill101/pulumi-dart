// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_zendesk_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<List<String>>? idFieldNames;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk].
  /// [errorHandlingConfig] Optional.
  /// [idFieldNames] Optional.
  /// [object] Required.
  /// [writeOperationType] Optional.
  FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk({
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'idFieldNames': ?idFieldNames,
      'object': object,
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk(
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : ((FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig.fromMap((map['errorHandlingConfig']! as Map).cast<String, dynamic>())).input()).input(),
      idFieldNames: map['idFieldNames'] == null ? null : (((map['idFieldNames'] as List).cast<String>()).input()).input(),
      object: (map['object'] as String).input(),
      writeOperationType: map['writeOperationType'] == null ? null : ((map['writeOperationType'] as String).input()).input(),
    );
  }
}

