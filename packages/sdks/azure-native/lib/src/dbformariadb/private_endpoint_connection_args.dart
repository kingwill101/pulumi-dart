// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// {@template pulumi_dbformariadb_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_dbformariadb_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointProperty>? privateEndpoint;
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty>? privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateEndpointConnectionName] Optional.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  PrivateEndpointConnectionArgs({
    pulumi.Output<PrivateEndpointProperty>? privateEndpoint,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionStateProperty>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpointProperty>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionStateProperty>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointProperty, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateProperty, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpoint: map['privateEndpoint'] == null ? null : pulumi.Output.create<PrivateEndpointProperty>(PrivateEndpointProperty.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionStateProperty>(PrivateLinkServiceConnectionStateProperty.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

