// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_salesforce_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce {
  final pulumi.Input<String>? dataTransferApi;
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<List<String>>? idFieldNames;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce].
  /// [dataTransferApi] Optional.
  /// [errorHandlingConfig] Optional.
  /// [idFieldNames] Optional.
  /// [object] Required.
  /// [writeOperationType] Optional.
  FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTransferApi': ?dataTransferApi,
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'idFieldNames': ?idFieldNames,
      'object': object,
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce(
      dataTransferApi: map['dataTransferApi'] == null ? null : (map['dataTransferApi'] as String).input(),
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      idFieldNames: map['idFieldNames'] == null ? null : ((map['idFieldNames'] as List).cast<String>()).input(),
      object: (map['object'] as String).input(),
      writeOperationType: map['writeOperationType'] == null ? null : (map['writeOperationType'] as String).input(),
    );
  }
}

