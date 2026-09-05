// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_custom_connector_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector {
  final pulumi.Input<Map<String, String>?>? customProperties;
  final pulumi.Input<String> entityName;
  /// Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig?>? errorHandlingConfig;
  /// Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  final pulumi.Input<List<String>?>? idFieldNames;
  /// Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
  final pulumi.Input<String?>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector].
  /// [customProperties] Optional.
  /// [entityName] Required.
  /// [errorHandlingConfig] Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  /// [idFieldNames] Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  /// [writeOperationType] Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector({
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
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idFieldNames: (() { final guardedValue = map['idFieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      writeOperationType: (() { final guardedValue = map['writeOperationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
