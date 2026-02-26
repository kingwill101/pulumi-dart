// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster_response4.dart';
import 'edge_cluster_response4.dart';
import 'gke_cluster_response5.dart';
import 'kubernetes_metadata_response4.dart';
import 'kubernetes_resource_response4.dart';
import 'multi_cloud_cluster_response4.dart';
import 'on_prem_cluster_response4.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponse4 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceClusterResponse4 applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeClusterResponse4 edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeClusterResponse5 gkeCluster;

  /// Useful Kubernetes-specific metadata.
  final KubernetesMetadataResponse4 kubernetesMetadata;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResourceResponse4 kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudClusterResponse4 multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremClusterResponse4 onPremCluster;

  MembershipEndpointResponse4({
    required this.applianceCluster,
    required this.edgeCluster,
    required this.gkeCluster,
    required this.kubernetesMetadata,
    required this.kubernetesResource,
    required this.multiCloudCluster,
    required this.onPremCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applianceCluster'] = applianceCluster.toMap();
    map['edgeCluster'] = edgeCluster.toMap();
    map['gkeCluster'] = gkeCluster.toMap();
    map['kubernetesMetadata'] = kubernetesMetadata.toMap();
    map['kubernetesResource'] = kubernetesResource.toMap();
    map['multiCloudCluster'] = multiCloudCluster.toMap();
    map['onPremCluster'] = onPremCluster.toMap();
    return map;
  }

  factory MembershipEndpointResponse4.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointResponse4(
      applianceCluster: ApplianceClusterResponse4.fromMap(
          (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: EdgeClusterResponse4.fromMap(
          (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: GkeClusterResponse5.fromMap(
          (map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesMetadata: KubernetesMetadataResponse4.fromMap(
          (map['kubernetesMetadata'] as Map).cast<String, dynamic>()),
      kubernetesResource: KubernetesResourceResponse4.fromMap(
          (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: MultiCloudClusterResponse4.fromMap(
          (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: OnPremClusterResponse4.fromMap(
          (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
