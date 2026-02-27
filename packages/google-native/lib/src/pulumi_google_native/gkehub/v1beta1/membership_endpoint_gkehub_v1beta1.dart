// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster_gkehub_v1beta1.dart';
import 'edge_cluster_gkehub_v1beta1.dart';
import 'gke_cluster_gkehub_v1beta1.dart';
import 'kubernetes_resource_gkehub_v1beta1.dart';
import 'multi_cloud_cluster_gkehub_v1beta1.dart';
import 'on_prem_cluster_gkehub_v1beta1.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointGkehubV1beta1 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceClusterGkehubV1beta1? applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeClusterGkehubV1beta1? edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeClusterGkehubV1beta1? gkeCluster;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResourceGkehubV1beta1? kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudClusterGkehubV1beta1? multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremClusterGkehubV1beta1? onPremCluster;

  MembershipEndpointGkehubV1beta1({
    this.applianceCluster,
    this.edgeCluster,
    this.gkeCluster,
    this.kubernetesResource,
    this.multiCloudCluster,
    this.onPremCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applianceClusterValue = applianceCluster;
    if (applianceClusterValue != null) {
      map['applianceCluster'] = applianceClusterValue.toMap();
    }
    final edgeClusterValue = edgeCluster;
    if (edgeClusterValue != null) {
      map['edgeCluster'] = edgeClusterValue.toMap();
    }
    final gkeClusterValue = gkeCluster;
    if (gkeClusterValue != null) {
      map['gkeCluster'] = gkeClusterValue.toMap();
    }
    final kubernetesResourceValue = kubernetesResource;
    if (kubernetesResourceValue != null) {
      map['kubernetesResource'] = kubernetesResourceValue.toMap();
    }
    final multiCloudClusterValue = multiCloudCluster;
    if (multiCloudClusterValue != null) {
      map['multiCloudCluster'] = multiCloudClusterValue.toMap();
    }
    final onPremClusterValue = onPremCluster;
    if (onPremClusterValue != null) {
      map['onPremCluster'] = onPremClusterValue.toMap();
    }
    return map;
  }

  factory MembershipEndpointGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkehubV1beta1(
      applianceCluster: map['applianceCluster'] == null
          ? null
          : ApplianceClusterGkehubV1beta1.fromMap(
              (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null
          ? null
          : EdgeClusterGkehubV1beta1.fromMap(
              (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null
          ? null
          : GkeClusterGkehubV1beta1.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null
          ? null
          : KubernetesResourceGkehubV1beta1.fromMap(
              (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null
          ? null
          : MultiCloudClusterGkehubV1beta1.fromMap(
              (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null
          ? null
          : OnPremClusterGkehubV1beta1.fromMap(
              (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
