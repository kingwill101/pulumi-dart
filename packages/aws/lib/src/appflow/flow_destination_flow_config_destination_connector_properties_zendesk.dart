// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_zendesk_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig?
      errorHandlingConfig;
  final List<String>? idFieldNames;
  final String object;
  final String? writeOperationType;

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
    final map = <String, dynamic>{};
    final errorHandlingConfigValue = errorHandlingConfig;
    if (errorHandlingConfigValue != null) {
      map['errorHandlingConfig'] = errorHandlingConfigValue.toMap();
    }
    final idFieldNamesValue = idFieldNames;
    if (idFieldNamesValue != null) {
      map['idFieldNames'] = idFieldNamesValue;
    }
    map['object'] = object;
    final writeOperationTypeValue = writeOperationType;
    if (writeOperationTypeValue != null) {
      map['writeOperationType'] = writeOperationTypeValue;
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig
              .fromMap(
                  (map['errorHandlingConfig'] as Map).cast<String, dynamic>()),
      idFieldNames: map['idFieldNames'] == null
          ? null
          : (map['idFieldNames'] as List).cast<String>(),
      object: map['object'] as String,
      writeOperationType: map['writeOperationType'] == null
          ? null
          : map['writeOperationType'] as String,
    );
  }
}
