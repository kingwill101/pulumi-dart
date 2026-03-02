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
  FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData({
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
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      idFieldNames: map['idFieldNames'] == null ? null : ((map['idFieldNames'] as List).cast<String>()).input(),
      objectPath: (map['objectPath'] as String).input(),
      successResponseHandlingConfig: map['successResponseHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig.fromMap((map['successResponseHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      writeOperationType: map['writeOperationType'] == null ? null : (map['writeOperationType'] as String).input(),
    );
  }
}

