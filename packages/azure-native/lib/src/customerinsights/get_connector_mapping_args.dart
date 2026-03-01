// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_connector_mapping_args_doc}
/// Arguments for getConnectorMapping.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_connector_mapping_args_doc}
class GetConnectorMappingArgs {
  /// The name of the connector.
  final pulumi.Input<String> connectorName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the connector mapping.
  final pulumi.Input<String> mappingName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectorMappingArgs].
  /// [connectorName] The name of the connector.
  /// [hubName] The name of the hub.
  /// [mappingName] The name of the connector mapping.
  /// [resourceGroupName] The name of the resource group.
  GetConnectorMappingArgs({
    required String connectorName,
    required String hubName,
    required String mappingName,
    required String resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      hubName = pulumi.Input.asInput<String>(hubName),
      mappingName = pulumi.Input.asInput<String>(mappingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'hubName': hubName,
      'mappingName': mappingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectorMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorMappingArgs(
      connectorName: map['connectorName'] as String,
      hubName: map['hubName'] as String,
      mappingName: map['mappingName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

