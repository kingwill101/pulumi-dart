// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// {@template pulumi_cosmosdb_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Group id of the private endpoint.
  final pulumi.Input<String>? groupId;
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointProperty>? privateEndpoint;
  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty>? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [groupId] Group id of the private endpoint.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [provisioningState] Provisioning state of the private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? groupId,
    pulumi.Output<PrivateEndpointProperty>? privateEndpoint,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionStateProperty>? privateLinkServiceConnectionState,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpointProperty>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionStateProperty>(privateLinkServiceConnectionState),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'groupId': ?groupId,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointProperty, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateProperty, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      privateEndpoint: map['privateEndpoint'] == null ? null : pulumi.Output.create<PrivateEndpointProperty>(PrivateEndpointProperty.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionStateProperty>(PrivateLinkServiceConnectionStateProperty.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

