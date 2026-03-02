// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetes_list_connected_cluster_user_credential_args_doc}
/// Arguments for listConnectedClusterUserCredential.
/// {@endtemplate}
/// {@macro pulumi_kubernetes_list_connected_cluster_user_credential_args_doc}
class ListConnectedClusterUserCredentialArgs {
  /// The mode of client authentication.
  final pulumi.Input<String> authenticationMethod;
  /// Boolean value to indicate whether the request is for client side proxy or not
  final pulumi.Input<bool> clientProxy;
  /// The name of the Kubernetes cluster on which get is called.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListConnectedClusterUserCredentialArgs].
  /// [authenticationMethod] The mode of client authentication.
  /// [clientProxy] Boolean value to indicate whether the request is for client side proxy or not
  /// [clusterName] The name of the Kubernetes cluster on which get is called.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListConnectedClusterUserCredentialArgs({
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

  factory ListConnectedClusterUserCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectedClusterUserCredentialArgs(
      authenticationMethod: (map['authenticationMethod'] as String).input(),
      clientProxy: (map['clientProxy'] as bool).input(),
      clusterName: (map['clusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

