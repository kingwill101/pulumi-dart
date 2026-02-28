// ignore_for_file: unused_element, unnecessary_cast

/// KubernetesMetadata provides informational metadata for Memberships that are created from Kubernetes Endpoints (currently, these are equivalent to Kubernetes clusters).
class KubernetesMetadataResponseGkehubV1alpha2 {
  /// Kubernetes API server version string as reported by '/version'.
  final String kubernetesApiServerVersion;

  /// The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.
  final int memoryMb;

  /// Node count as reported by Kubernetes nodes resources.
  final int nodeCount;

  /// Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.
  final String nodeProviderId;

  /// The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.
  final String updateTime;

  /// vCPU count as reported by Kubernetes nodes resources.
  final int vcpuCount;

  /// Creates a new [KubernetesMetadataResponseGkehubV1alpha2].
  /// [kubernetesApiServerVersion] Kubernetes API server version string as reported by '/version'.
  /// [memoryMb] The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.
  /// [nodeCount] Node count as reported by Kubernetes nodes resources.
  /// [nodeProviderId] Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.
  /// [updateTime] The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.
  /// [vcpuCount] vCPU count as reported by Kubernetes nodes resources.
  KubernetesMetadataResponseGkehubV1alpha2({
    required this.kubernetesApiServerVersion,
    required this.memoryMb,
    required this.nodeCount,
    required this.nodeProviderId,
    required this.updateTime,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kubernetesApiServerVersion'] = kubernetesApiServerVersion;
    map['memoryMb'] = memoryMb;
    map['nodeCount'] = nodeCount;
    map['nodeProviderId'] = nodeProviderId;
    map['updateTime'] = updateTime;
    map['vcpuCount'] = vcpuCount;
    return map;
  }

  factory KubernetesMetadataResponseGkehubV1alpha2.fromMap(
      Map<String, dynamic> map) {
    return KubernetesMetadataResponseGkehubV1alpha2(
      kubernetesApiServerVersion: map['kubernetesApiServerVersion'] as String,
      memoryMb: map['memoryMb'] as int,
      nodeCount: map['nodeCount'] as int,
      nodeProviderId: map['nodeProviderId'] as String,
      updateTime: map['updateTime'] as String,
      vcpuCount: map['vcpuCount'] as int,
    );
  }
}
