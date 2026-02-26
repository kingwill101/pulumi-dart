// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_salesforce_error_handling_config/flow_destination_flow_config_destination_connector_properties_salesforce_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce {
  final String? dataTransferApi;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig?
      errorHandlingConfig;
  final List<String>? idFieldNames;
  final String object;
  final String? writeOperationType;

  FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTransferApiValue = dataTransferApi;
    if (dataTransferApiValue != null) {
      map['dataTransferApi'] = dataTransferApiValue;
    }
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce(
      dataTransferApi: map['dataTransferApi'] == null
          ? null
          : map['dataTransferApi'] as String,
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig
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
