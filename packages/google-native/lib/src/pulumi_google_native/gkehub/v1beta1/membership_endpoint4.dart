// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster4.dart';
import 'edge_cluster4.dart';
import 'gke_cluster5.dart';
import 'kubernetes_resource4.dart';
import 'multi_cloud_cluster4.dart';
import 'on_prem_cluster4.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpoint4 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceCluster4? applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeCluster4? edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeCluster5? gkeCluster;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResource4? kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudCluster4? multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremCluster4? onPremCluster;

  MembershipEndpoint4({
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

  factory MembershipEndpoint4.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint4(
      applianceCluster: map['applianceCluster'] == null
          ? null
          : ApplianceCluster4.fromMap(
              (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null
          ? null
          : EdgeCluster4.fromMap(
              (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null
          ? null
          : GkeCluster5.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null
          ? null
          : KubernetesResource4.fromMap(
              (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null
          ? null
          : MultiCloudCluster4.fromMap(
              (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null
          ? null
          : OnPremCluster4.fromMap(
              (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
