// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_private_endpoint_connection_by_host_pool_args_doc}
/// Arguments for getPrivateEndpointConnectionByHostPool.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_host_pool_args_doc}
class GetPrivateEndpointConnectionByHostPoolArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionByHostPoolArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionByHostPoolArgs({
    required pulumi.Output<String> hostPoolName,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hostPoolName = pulumi.Input.asInput<String>(hostPoolName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionByHostPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionByHostPoolArgs(
      hostPoolName: pulumi.Output.create<String>(map['hostPoolName'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

