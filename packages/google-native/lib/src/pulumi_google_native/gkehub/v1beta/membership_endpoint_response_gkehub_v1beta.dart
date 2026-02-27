// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster_response_gkehub_v1beta.dart';
import 'edge_cluster_response_gkehub_v1beta.dart';
import 'gke_cluster_response_gkehub_v1beta.dart';
import 'kubernetes_metadata_response_gkehub_v1beta.dart';
import 'kubernetes_resource_response_gkehub_v1beta.dart';
import 'multi_cloud_cluster_response_gkehub_v1beta.dart';
import 'on_prem_cluster_response_gkehub_v1beta.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponseGkehubV1beta {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceClusterResponseGkehubV1beta applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeClusterResponseGkehubV1beta edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeClusterResponseGkehubV1beta gkeCluster;

  /// Whether the lifecycle of this membership is managed by a google cluster platform service.
  final bool googleManaged;

  /// Useful Kubernetes-specific metadata.
  final KubernetesMetadataResponseGkehubV1beta kubernetesMetadata;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResourceResponseGkehubV1beta kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudClusterResponseGkehubV1beta multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremClusterResponseGkehubV1beta onPremCluster;

  MembershipEndpointResponseGkehubV1beta({
    required this.applianceCluster,
    required this.edgeCluster,
    required this.gkeCluster,
    required this.googleManaged,
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
    map['googleManaged'] = googleManaged;
    map['kubernetesMetadata'] = kubernetesMetadata.toMap();
    map['kubernetesResource'] = kubernetesResource.toMap();
    map['multiCloudCluster'] = multiCloudCluster.toMap();
    map['onPremCluster'] = onPremCluster.toMap();
    return map;
  }

  factory MembershipEndpointResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return MembershipEndpointResponseGkehubV1beta(
      applianceCluster: ApplianceClusterResponseGkehubV1beta.fromMap(
          (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: EdgeClusterResponseGkehubV1beta.fromMap(
          (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: GkeClusterResponseGkehubV1beta.fromMap(
          (map['gkeCluster'] as Map).cast<String, dynamic>()),
      googleManaged: map['googleManaged'] as bool,
      kubernetesMetadata: KubernetesMetadataResponseGkehubV1beta.fromMap(
          (map['kubernetesMetadata'] as Map).cast<String, dynamic>()),
      kubernetesResource: KubernetesResourceResponseGkehubV1beta.fromMap(
          (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: MultiCloudClusterResponseGkehubV1beta.fromMap(
          (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: OnPremClusterResponseGkehubV1beta.fromMap(
          (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
