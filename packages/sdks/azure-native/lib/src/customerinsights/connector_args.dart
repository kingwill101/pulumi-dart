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
    pulumi.Output<String>? connectorName,
    required pulumi.Output<Map<String, dynamic>> connectorProperties,
    required pulumi.Output<String> connectorType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> hubName,
    pulumi.Output<bool>? isInternal,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      connectorProperties = pulumi.Input.asInput<Map<String, dynamic>>(connectorProperties),
      connectorType = pulumi.Input.asInput<String>(connectorType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hubName = pulumi.Input.asInput<String>(hubName),
      isInternal = pulumi.Input.asOptionalInput<bool>(isInternal),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      connectorName: map['connectorName'] == null ? null : pulumi.Output.create<String>(map['connectorName'] as String),
      connectorProperties: pulumi.Output.create<Map<String, dynamic>>((map['connectorProperties'] as Map).cast<String, dynamic>()),
      connectorType: pulumi.Output.create<String>(map['connectorType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      isInternal: map['isInternal'] == null ? null : pulumi.Output.create<bool>(map['isInternal'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

