// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_custom_connector_error_handling_config/flow_destination_flow_config_destination_connector_properties_custom_connector_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector {
  final Map<String, String>? customProperties;
  final String entityName;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig?
      errorHandlingConfig;
  final List<String>? idFieldNames;
  final String? writeOperationType;

  FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
    this.errorHandlingConfig,
    this.idFieldNames,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPropertiesValue = customProperties;
    if (customPropertiesValue != null) {
      map['customProperties'] = customPropertiesValue;
    }
    map['entityName'] = entityName;
    final errorHandlingConfigValue = errorHandlingConfig;
    if (errorHandlingConfigValue != null) {
      map['errorHandlingConfig'] = errorHandlingConfigValue.toMap();
    }
    final idFieldNamesValue = idFieldNames;
    if (idFieldNamesValue != null) {
      map['idFieldNames'] = idFieldNamesValue;
    }
    final writeOperationTypeValue = writeOperationType;
    if (writeOperationTypeValue != null) {
      map['writeOperationType'] = writeOperationTypeValue;
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector(
      customProperties: map['customProperties'] == null
          ? null
          : (map['customProperties'] as Map).cast<String, String>(),
      entityName: map['entityName'] as String,
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig
              .fromMap(
                  (map['errorHandlingConfig'] as Map).cast<String, dynamic>()),
      idFieldNames: map['idFieldNames'] == null
          ? null
          : (map['idFieldNames'] as List).cast<String>(),
      writeOperationType: map['writeOperationType'] == null
          ? null
          : map['writeOperationType'] as String,
    );
  }
}
