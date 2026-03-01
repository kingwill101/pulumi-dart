// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state.dart';
import 'private_endpoint.dart';

/// {@template pulumi_eventgrid_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// GroupIds from the private link service resource.
  final pulumi.Input<List<String>>? groupIds;
  /// The name of the parent resource (namely, either, the topic name, domain name, or partner namespace name or namespace name).
  final pulumi.Input<String> parentName;
  /// The type of the parent resource. This can be either \'topics\', \'domains\', or \'partnerNamespaces\' or \'namespaces\'.
  final pulumi.Input<String> parentType;
  /// The Private Endpoint resource for this Connection.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// The name of the private endpoint connection connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Details about the state of the connection.
  final pulumi.Input<ConnectionState>? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [groupIds] GroupIds from the private link service resource.
  /// [parentName] The name of the parent resource (namely, either, the topic name, domain name, or partner namespace name or namespace name).
  /// [parentType] The type of the parent resource. This can be either \'topics\', \'domains\', or \'partnerNamespaces\' or \'namespaces\'.
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateEndpointConnectionName] The name of the private endpoint connection connection.
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  PrivateEndpointConnectionArgs({
    List<String>? groupIds,
    required String parentName,
    required String parentType,
    PrivateEndpoint? privateEndpoint,
    String? privateEndpointConnectionName,
    ConnectionState? privateLinkServiceConnectionState,
    String? provisioningState,
    required String resourceGroupName,
  }) :
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      parentName = pulumi.Input.asInput<String>(parentName),
      parentType = pulumi.Input.asInput<String>(parentType),
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpoint>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<ConnectionState>(privateLinkServiceConnectionState),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'parentName': parentName,
      'parentType': parentType,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      parentName: map['parentName'] as String,
      parentType: map['parentType'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : map['privateEndpointConnectionName'] as String,
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

