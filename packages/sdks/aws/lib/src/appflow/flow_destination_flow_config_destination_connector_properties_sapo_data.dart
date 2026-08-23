// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_sapo_data_error_handling_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_sapo_data_success_response_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData {
  /// Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig>? errorHandlingConfig;
  /// Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  final pulumi.Input<List<String>>? idFieldNames;
  final pulumi.Input<String> objectPath;
  /// Settings that determine how Amazon AppFlow handles the success response it gets from the connector after placing data. See the `destination_flow_config.destination_connector_properties.sapo_data.success_response_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig>? successResponseHandlingConfig;
  /// Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
  final pulumi.Input<String>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData].
  /// [errorHandlingConfig] Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  /// [idFieldNames] Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  /// [objectPath] Required.
  /// [successResponseHandlingConfig] Settings that determine how Amazon AppFlow handles the success response it gets from the connector after placing data. See the `destination_flow_config.destination_connector_properties.sapo_data.success_response_handling_config` Block for details.
  /// [writeOperationType] Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
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
