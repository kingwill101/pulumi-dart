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
  const GetConnectorMappingArgs({
    required this.connectorName,
    required this.hubName,
    required this.mappingName,
    required this.resourceGroupName,
  });

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
      connectorName: pulumi.Input.fromValue(map['connectorName'] as String),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      mappingName: pulumi.Input.fromValue(map['mappingName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
