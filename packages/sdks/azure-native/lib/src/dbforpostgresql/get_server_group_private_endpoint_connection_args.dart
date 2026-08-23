// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_server_group_private_endpoint_connection_args_doc}
/// Arguments for getServerGroupPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_server_group_private_endpoint_connection_args_doc}
class GetServerGroupPrivateEndpointConnectionArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServerGroupPrivateEndpointConnectionArgs].
  /// [clusterName] The name of the cluster.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetServerGroupPrivateEndpointConnectionArgs({
    required this.clusterName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerGroupPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupPrivateEndpointConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
