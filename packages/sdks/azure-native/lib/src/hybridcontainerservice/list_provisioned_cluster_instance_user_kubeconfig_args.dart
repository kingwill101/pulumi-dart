// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_list_provisioned_cluster_instance_user_kubeconfig_args_doc}
/// Arguments for listProvisionedClusterInstanceUserKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_list_provisioned_cluster_instance_user_kubeconfig_args_doc}
class ListProvisionedClusterInstanceUserKubeconfigArgs {
  /// The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  final pulumi.Input<String> connectedClusterResourceUri;

  /// Creates a new [ListProvisionedClusterInstanceUserKubeconfigArgs].
  /// [connectedClusterResourceUri] The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  ListProvisionedClusterInstanceUserKubeconfigArgs({
    required this.connectedClusterResourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedClusterResourceUri': connectedClusterResourceUri,
    };
  }

  factory ListProvisionedClusterInstanceUserKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return ListProvisionedClusterInstanceUserKubeconfigArgs(
      connectedClusterResourceUri: (map['connectedClusterResourceUri'] as String).input(),
    );
  }
}

