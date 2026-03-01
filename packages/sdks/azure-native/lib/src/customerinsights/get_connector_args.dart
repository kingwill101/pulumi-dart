// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_connector_args_doc}
class GetConnectorArgs {
  /// The name of the connector.
  final pulumi.Input<String> connectorName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] The name of the connector.
  /// [hubName] The name of the hub.
  /// [resourceGroupName] The name of the resource group.
  GetConnectorArgs({
    required pulumi.Output<String> connectorName,
    required pulumi.Output<String> hubName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

