// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_list_provisioned_cluster_instance_admin_kubeconfig_args_doc}
/// Arguments for listProvisionedClusterInstanceAdminKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_list_provisioned_cluster_instance_admin_kubeconfig_args_doc}
class ListProvisionedClusterInstanceAdminKubeconfigArgs {
  /// The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  final pulumi.Input<String> connectedClusterResourceUri;

  /// Creates a new [ListProvisionedClusterInstanceAdminKubeconfigArgs].
  /// [connectedClusterResourceUri] The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  ListProvisionedClusterInstanceAdminKubeconfigArgs({
    required pulumi.Output<String> connectedClusterResourceUri,
  }) :
      connectedClusterResourceUri = pulumi.Input.asInput<String>(connectedClusterResourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedClusterResourceUri': connectedClusterResourceUri,
    };
  }

  factory ListProvisionedClusterInstanceAdminKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return ListProvisionedClusterInstanceAdminKubeconfigArgs(
      connectedClusterResourceUri: pulumi.Output.create<String>(map['connectedClusterResourceUri'] as String),
    );
  }
}

