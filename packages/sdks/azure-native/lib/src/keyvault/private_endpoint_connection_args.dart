// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_keyvault_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_keyvault_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Name of the private endpoint connection associated with the key vault.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Approval state of the private link connection.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// Name of the resource group that contains the key vault.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the key vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] Name of the private endpoint connection associated with the key vault.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [resourceGroupName] Name of the resource group that contains the key vault.
  /// [vaultName] The name of the key vault.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

