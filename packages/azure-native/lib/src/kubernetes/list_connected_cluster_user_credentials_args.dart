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
  ListConnectedClusterUserCredentialsArgs({
    required String authenticationMethod,
    required bool clientProxy,
    required String clusterName,
    required String resourceGroupName,
  }) :
      authenticationMethod = pulumi.Input.asInput<String>(authenticationMethod),
      clientProxy = pulumi.Input.asInput<bool>(clientProxy),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authenticationMethod: map['authenticationMethod'] as String,
      clientProxy: map['clientProxy'] as bool,
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

