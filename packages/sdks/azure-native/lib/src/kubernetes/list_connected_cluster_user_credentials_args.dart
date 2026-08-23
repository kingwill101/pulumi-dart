// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetes_list_connected_cluster_user_credentials_args_doc}
/// Arguments for listConnectedClusterUserCredentials.
/// {@endtemplate}
/// {@macro pulumi_kubernetes_list_connected_cluster_user_credentials_args_doc}
class ListConnectedClusterUserCredentialsArgs {
  /// The mode of client authentication.
  final pulumi.Input<String> authenticationMethod;
  /// Boolean value to indicate whether the request is for client side proxy or not
  final pulumi.Input<bool> clientProxy;
  /// The name of the Kubernetes cluster on which get is called.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListConnectedClusterUserCredentialsArgs].
  /// [authenticationMethod] The mode of client authentication.
  /// [clientProxy] Boolean value to indicate whether the request is for client side proxy or not
  /// [clusterName] The name of the Kubernetes cluster on which get is called.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListConnectedClusterUserCredentialsArgs({
    required this.authenticationMethod,
    required this.clientProxy,
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethod': authenticationMethod,
      'clientProxy': clientProxy,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListConnectedClusterUserCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectedClusterUserCredentialsArgs(
      authenticationMethod: pulumi.Input.fromValue(map['authenticationMethod'] as String),
      clientProxy: pulumi.Input.fromValue(map['clientProxy'] as bool),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
