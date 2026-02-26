// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster2.dart';
import 'edge_cluster2.dart';
import 'gke_cluster3.dart';
import 'kubernetes_resource2.dart';
import 'multi_cloud_cluster2.dart';
import 'on_prem_cluster2.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpoint2 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceCluster2? applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeCluster2? edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeCluster3? gkeCluster;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResource2? kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudCluster2? multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremCluster2? onPremCluster;

  MembershipEndpoint2({
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

  factory MembershipEndpoint2.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint2(
      applianceCluster: map['applianceCluster'] == null
          ? null
          : ApplianceCluster2.fromMap(
              (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null
          ? null
          : EdgeCluster2.fromMap(
              (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null
          ? null
          : GkeCluster3.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null
          ? null
          : KubernetesResource2.fromMap(
              (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null
          ? null
          : MultiCloudCluster2.fromMap(
              (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null
          ? null
          : OnPremCluster2.fromMap(
              (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
