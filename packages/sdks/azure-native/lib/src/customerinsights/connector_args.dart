// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_connector_args_doc}
class ConnectorArgs {
  /// Name of the connector.
  final pulumi.Input<String>? connectorName;
  /// The connector properties.
  final pulumi.Input<Map<String, dynamic>> connectorProperties;
  /// Type of connector.
  final pulumi.Input<String> connectorType;
  /// Description of the connector.
  final pulumi.Input<String>? description;
  /// Display name of the connector.
  final pulumi.Input<String>? displayName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// If this is an internal connector.
  final pulumi.Input<bool>? isInternal;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectorArgs].
  /// [connectorName] Name of the connector.
  /// [connectorProperties] The connector properties.
  /// [connectorType] Type of connector.
  /// [description] Description of the connector.
  /// [displayName] Display name of the connector.
  /// [hubName] The name of the hub.
  /// [isInternal] If this is an internal connector.
  /// [resourceGroupName] The name of the resource group.
  ConnectorArgs({
    this.connectorName,
    required this.connectorProperties,
    required this.connectorType,
    this.description,
    this.displayName,
    required this.hubName,
    this.isInternal,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'connectorProperties': connectorProperties,
      'connectorType': connectorType,
      'description': ?description,
      'displayName': ?displayName,
      'hubName': hubName,
      'isInternal': ?isInternal,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorProperties: pulumi.Input.fromValue((map['connectorProperties'] as Map).cast<String, dynamic>()),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      isInternal: (() { final guardedValue = map['isInternal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

