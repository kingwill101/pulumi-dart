// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_cluster_info_response.dart';
import 'kubernetes_role_resources_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKubernetesRole.
class GetKubernetesRoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Host OS supported by the Kubernetes role.
  final String? hostPlatform;
  /// Platform where the runtime is hosted.
  final String? hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Role type.
  /// Expected value is 'Kubernetes'.
  final String? kind;
  /// Kubernetes cluster configuration
  final KubernetesClusterInfoResponse? kubernetesClusterInfo;
  /// Kubernetes role resources
  final KubernetesRoleResourcesResponse? kubernetesRoleResources;
  /// The object name.
  final String? name;
  /// State of Kubernetes deployment
  final String? provisioningState;
  /// Role status.
  final String? roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

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
    this.azureApiVersion,
    this.hostPlatform,
    this.hostPlatformType,
    this.id,
    this.kind,
    this.kubernetesClusterInfo,
    this.kubernetesRoleResources,
    this.name,
    this.provisioningState,
    this.roleStatus,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'hostPlatform': ?hostPlatform,
      'hostPlatformType': ?hostPlatformType,
      'id': ?id,
      'kind': ?kind,
      'kubernetesClusterInfo': ?kubernetesClusterInfo?.toMap(),
      'kubernetesRoleResources': ?kubernetesRoleResources?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'roleStatus': ?roleStatus,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetKubernetesRoleResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesRoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatform: (() { final guardedValue = map['hostPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatformType: (() { final guardedValue = map['hostPlatformType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesClusterInfo: (() { final guardedValue = map['kubernetesClusterInfo']; if (guardedValue == null) return null; return KubernetesClusterInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kubernetesRoleResources: (() { final guardedValue = map['kubernetesRoleResources']; if (guardedValue == null) return null; return KubernetesRoleResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleStatus: (() { final guardedValue = map['roleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
