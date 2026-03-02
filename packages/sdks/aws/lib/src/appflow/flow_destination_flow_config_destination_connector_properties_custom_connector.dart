// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_custom_connector_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector {
  final pulumi.Input<Map<String, String>>? customProperties;
  final pulumi.Input<String> entityName;
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<List<String>>? idFieldNames;
  final pulumi.Input<String>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector].
  /// [customProperties] Optional.
  /// [entityName] Required.
  /// [errorHandlingConfig] Optional.
  /// [idFieldNames] Optional.
  /// [writeOperationType] Optional.
  FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
    this.errorHandlingConfig,
    this.idFieldNames,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?customProperties,
      'entityName': entityName,
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'idFieldNames': ?idFieldNames,
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector(
      customProperties: map['customProperties'] == null ? null : ((map['customProperties'] as Map).cast<String, String>()).input(),
      entityName: (map['entityName'] as String).input(),
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      idFieldNames: map['idFieldNames'] == null ? null : ((map['idFieldNames'] as List).cast<String>()).input(),
      writeOperationType: map['writeOperationType'] == null ? null : (map['writeOperationType'] as String).input(),
    );
  }
}

