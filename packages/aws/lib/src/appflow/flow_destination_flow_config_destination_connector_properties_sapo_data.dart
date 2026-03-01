// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_sapo_data_error_handling_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_sapo_data_success_response_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData {
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig?
  errorHandlingConfig;
  final List<String>? idFieldNames;
  final String objectPath;

  /// Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig?
  successResponseHandlingConfig;
  final String? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData].
  /// [errorHandlingConfig] Optional.
  /// [idFieldNames] Optional.
  /// [objectPath] Required.
  /// [successResponseHandlingConfig] Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details.
  /// [writeOperationType] Optional.
  FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData({
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.objectPath,
    this.successResponseHandlingConfig,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?errorHandlingConfig == null
          ? null
          : errorHandlingConfig!.toMap(),
      'idFieldNames': ?idFieldNames,
      'objectPath': objectPath,
      'successResponseHandlingConfig': ?successResponseHandlingConfig == null
          ? null
          : successResponseHandlingConfig!.toMap(),
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData(
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      idFieldNames: map['idFieldNames'] == null
          ? null
          : (map['idFieldNames'] as List).cast<String>(),
      objectPath: map['objectPath'] as String,
      successResponseHandlingConfig:
          map['successResponseHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig.fromMap(
              (map['successResponseHandlingConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      writeOperationType: map['writeOperationType'] == null
          ? null
          : map['writeOperationType'] as String,
    );
  }
}
