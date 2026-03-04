// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// Name of the private endpoint connection associated with the key vault.
  final pulumi.Input<String> privateEndpointConnectionName;

  /// Name of the resource group that contains the key vault.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the key vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] Name of the private endpoint connection associated with the key vault.
  /// [resourceGroupName] Name of the resource group that contains the key vault.
  /// [vaultName] The name of the key vault.
  GetPrivateEndpointConnectionArgs({
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(
        map['privateEndpointConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
