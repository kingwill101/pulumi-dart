// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_sapo_data_error_handling_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_sapo_data_success_response_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData {
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<List<String>>? idFieldNames;
  final pulumi.Input<String> objectPath;
  /// Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig>? successResponseHandlingConfig;
  final pulumi.Input<String>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData].
  /// [errorHandlingConfig] Optional.
  /// [idFieldNames] Optional.
  /// [objectPath] Required.
  /// [successResponseHandlingConfig] Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details.
  /// [writeOperationType] Optional.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData({
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.objectPath,
    this.successResponseHandlingConfig,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'idFieldNames': ?idFieldNames,
      'objectPath': objectPath,
      'successResponseHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig, Map<String, dynamic>>(successResponseHandlingConfig, (value) => value.toMap()),
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData(
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idFieldNames: (() { final guardedValue = map['idFieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      objectPath: pulumi.Input.fromValue(map['objectPath'] as String),
      successResponseHandlingConfig: (() { final guardedValue = map['successResponseHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeOperationType: (() { final guardedValue = map['writeOperationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

