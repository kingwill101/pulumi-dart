// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_cluster_info_response.dart';
import 'kubernetes_role_resources_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKubernetesRole.
class GetKubernetesRoleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Host OS supported by the Kubernetes role.
  final String hostPlatform;
  /// Platform where the runtime is hosted.
  final String hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// Role type.
  /// Expected value is 'Kubernetes'.
  final String kind;
  /// Kubernetes cluster configuration
  final KubernetesClusterInfoResponse kubernetesClusterInfo;
  /// Kubernetes role resources
  final KubernetesRoleResourcesResponse kubernetesRoleResources;
  /// The object name.
  final String name;
  /// State of Kubernetes deployment
  final String provisioningState;
  /// Role status.
  final String roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetKubernetesRoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostPlatform] Host OS supported by the Kubernetes role.
  /// [hostPlatformType] Platform where the runtime is hosted.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Role type.
  /// [kubernetesClusterInfo] Kubernetes cluster configuration
  /// [kubernetesRoleResources] Kubernetes role resources
  /// [name] The object name.
  /// [provisioningState] State of Kubernetes deployment
  /// [roleStatus] Role status.
  /// [systemData] Metadata pertaining to creation and last modification of Role
  /// [type] The hierarchical type of the object.
  const GetKubernetesRoleResult({
    required this.azureApiVersion,
    required this.hostPlatform,
    required this.hostPlatformType,
    required this.id,
    required this.kind,
    required this.kubernetesClusterInfo,
    required this.kubernetesRoleResources,
    required this.name,
    required this.provisioningState,
    required this.roleStatus,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'hostPlatform': hostPlatform,
      'hostPlatformType': hostPlatformType,
      'id': id,
      'kind': kind,
      'kubernetesClusterInfo': kubernetesClusterInfo.toMap(),
      'kubernetesRoleResources': kubernetesRoleResources.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'roleStatus': roleStatus,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetKubernetesRoleResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesRoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      hostPlatform: map['hostPlatform'] as String,
      hostPlatformType: map['hostPlatformType'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      kubernetesClusterInfo: KubernetesClusterInfoResponse.fromMap((map['kubernetesClusterInfo']! as Map).cast<String, dynamic>()),
      kubernetesRoleResources: KubernetesRoleResourcesResponse.fromMap((map['kubernetesRoleResources']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      roleStatus: map['roleStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
