// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_zendesk_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk {
  /// Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig?>? errorHandlingConfig;
  /// Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  final pulumi.Input<List<String>?>? idFieldNames;
  final pulumi.Input<String> object_;
  /// Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
  final pulumi.Input<String?>? writeOperationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk].
  /// [errorHandlingConfig] Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  /// [idFieldNames] Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
  /// [object_] Required.
  /// [writeOperationType] Type of write operation to be performed in Zendesk. When the value is `UPSERT`, `idFieldNames` is required. Valid values are `INSERT`, `UPSERT`, `UPDATE`, and `DELETE`.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk({
    this.errorHandlingConfig,
    this.idFieldNames,
    required this.object_,
    this.writeOperationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'idFieldNames': ?idFieldNames,
      'object': object_,
      'writeOperationType': ?writeOperationType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk(
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idFieldNames: (() { final guardedValue = map['idFieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      writeOperationType: (() { final guardedValue = map['writeOperationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
