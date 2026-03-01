// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_elasticsan_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// List of resources private endpoint is mapped
  final pulumi.Input<List<String>>? groupIds;
  /// The name of the Private Endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Private Link Service Connection State.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [groupIds] List of resources private endpoint is mapped
  /// [privateEndpointConnectionName] The name of the Private Endpoint connection.
  /// [privateLinkServiceConnectionState] Private Link Service Connection State.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required pulumi.Output<String> elasticSanName,
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? privateEndpointConnectionName,
    required pulumi.Output<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'groupIds': ?groupIds,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      elasticSanName: pulumi.Output.create<String>(map['elasticSanName'] as String),
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

