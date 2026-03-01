// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gateway_definition_properties.dart';

/// {@template pulumi_web_connection_gateway_args_doc}
/// The set of arguments for ConnectionGateway.
/// {@endtemplate}
/// {@macro pulumi_web_connection_gateway_args_doc}
class ConnectionGatewayArgs {
  /// The connection gateway name
  final pulumi.Input<String>? connectionGatewayName;
  /// Resource location
  final pulumi.Input<String>? location;
  final pulumi.Input<ConnectionGatewayDefinitionProperties>? properties;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionGatewayArgs].
  /// [connectionGatewayName] The connection gateway name
  /// [location] Resource location
  /// [properties] Optional.
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  /// [tags] Resource tags
  ConnectionGatewayArgs({
    String? connectionGatewayName,
    String? location,
    ConnectionGatewayDefinitionProperties? properties,
    required String resourceGroupName,
    String? subscriptionId,
    Map<String, String>? tags,
  }) :
      connectionGatewayName = pulumi.Input.asOptionalInput<String>(connectionGatewayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConnectionGatewayDefinitionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionGatewayName': ?connectionGatewayName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectionGatewayDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory ConnectionGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayArgs(
      connectionGatewayName: map['connectionGatewayName'] == null ? null : map['connectionGatewayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ConnectionGatewayDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

