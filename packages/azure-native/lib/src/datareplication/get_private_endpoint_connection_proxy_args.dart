// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_private_endpoint_connection_proxy_args_doc}
/// Arguments for getPrivateEndpointConnectionProxy.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_private_endpoint_connection_proxy_args_doc}
class GetPrivateEndpointConnectionProxyArgs {
  /// The private endpoint connection proxy name.
  final pulumi.Input<String> privateEndpointConnectionProxyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetPrivateEndpointConnectionProxyArgs].
  /// [privateEndpointConnectionProxyName] The private endpoint connection proxy name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  GetPrivateEndpointConnectionProxyArgs({
    required String privateEndpointConnectionProxyName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      privateEndpointConnectionProxyName = pulumi.Input.asInput<String>(privateEndpointConnectionProxyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionProxyName': privateEndpointConnectionProxyName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetPrivateEndpointConnectionProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionProxyArgs(
      privateEndpointConnectionProxyName: map['privateEndpointConnectionProxyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

