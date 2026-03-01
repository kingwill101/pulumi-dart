// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_botservice_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_botservice_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Group ids
  final pulumi.Input<List<String>>? groupIds;
  /// The name of the private endpoint connection associated with the Azure resource
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Bot resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [groupIds] Group ids
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Bot resource.
  PrivateEndpointConnectionArgs({
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? privateEndpointConnectionName,
    required pulumi.Output<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

