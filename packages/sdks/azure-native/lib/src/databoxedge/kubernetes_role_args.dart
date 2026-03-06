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
  const KubernetesRoleArgs({
    required this.deviceName,
    required this.hostPlatform,
    required this.kind,
    required this.kubernetesClusterInfo,
    required this.kubernetesRoleResources,
    this.name,
    required this.resourceGroupName,
    required this.roleStatus,
  });

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
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      hostPlatform: pulumi.Input.fromValue(map['hostPlatform'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kubernetesClusterInfo: pulumi.Input.fromValue(KubernetesClusterInfo.fromMap((map['kubernetesClusterInfo']! as Map).cast<String, dynamic>())),
      kubernetesRoleResources: pulumi.Input.fromValue(KubernetesRoleResources.fromMap((map['kubernetesRoleResources']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleStatus: pulumi.Input.fromValue(map['roleStatus'] as String),
    );
  }
}

