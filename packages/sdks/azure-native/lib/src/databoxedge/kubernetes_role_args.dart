// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_info.dart';
import 'kubernetes_role_resources.dart';

/// {@template pulumi_databoxedge_kubernetes_role_args_doc}
/// The set of arguments for KubernetesRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_kubernetes_role_args_doc}
class KubernetesRoleArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// Host OS supported by the Kubernetes role.
  final pulumi.Input<String> hostPlatform;
  /// Role type.
  /// Expected value is 'Kubernetes'.
  final pulumi.Input<String> kind;
  /// Kubernetes cluster configuration
  final pulumi.Input<KubernetesClusterInfo> kubernetesClusterInfo;
  /// Kubernetes role resources
  final pulumi.Input<KubernetesRoleResources> kubernetesRoleResources;
  /// The role name.
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Role status.
  final pulumi.Input<String> roleStatus;

  /// Creates a new [KubernetesRoleArgs].
  /// [deviceName] The device name.
  /// [hostPlatform] Host OS supported by the Kubernetes role.
  /// [kind] Role type.
  /// [kubernetesClusterInfo] Kubernetes cluster configuration
  /// [kubernetesRoleResources] Kubernetes role resources
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  /// [roleStatus] Role status.
  KubernetesRoleArgs({
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> hostPlatform,
    required pulumi.Output<String> kind,
    required pulumi.Output<KubernetesClusterInfo> kubernetesClusterInfo,
    required pulumi.Output<KubernetesRoleResources> kubernetesRoleResources,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleStatus,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      hostPlatform = pulumi.Input.asInput<String>(hostPlatform),
      kind = pulumi.Input.asInput<String>(kind),
      kubernetesClusterInfo = pulumi.Input.asInput<KubernetesClusterInfo>(kubernetesClusterInfo),
      kubernetesRoleResources = pulumi.Input.asInput<KubernetesRoleResources>(kubernetesRoleResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleStatus = pulumi.Input.asInput<String>(roleStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'hostPlatform': hostPlatform,
      'kind': kind,
      'kubernetesClusterInfo': pulumi.Input.mapInputValue<KubernetesClusterInfo, Map<String, dynamic>>(kubernetesClusterInfo, (value) => value.toMap()),
      'kubernetesRoleResources': pulumi.Input.mapInputValue<KubernetesRoleResources, Map<String, dynamic>>(kubernetesRoleResources, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'roleStatus': roleStatus,
    };
  }

  factory KubernetesRoleArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleArgs(
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      hostPlatform: pulumi.Output.create<String>(map['hostPlatform'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      kubernetesClusterInfo: pulumi.Output.create<KubernetesClusterInfo>(KubernetesClusterInfo.fromMap((map['kubernetesClusterInfo'] as Map).cast<String, dynamic>())),
      kubernetesRoleResources: pulumi.Output.create<KubernetesRoleResources>(KubernetesRoleResources.fromMap((map['kubernetesRoleResources'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleStatus: pulumi.Output.create<String>(map['roleStatus'] as String),
    );
  }
}

