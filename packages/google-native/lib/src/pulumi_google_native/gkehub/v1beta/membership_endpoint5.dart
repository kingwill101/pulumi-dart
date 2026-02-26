// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster5.dart';
import 'edge_cluster5.dart';
import 'gke_cluster6.dart';
import 'kubernetes_resource5.dart';
import 'multi_cloud_cluster5.dart';
import 'on_prem_cluster5.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpoint5 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceCluster5? applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final EdgeCluster5? edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeCluster6? gkeCluster;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResource5? kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudCluster5? multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremCluster5? onPremCluster;

  MembershipEndpoint5({
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

  factory MembershipEndpoint5.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint5(
      applianceCluster: map['applianceCluster'] == null
          ? null
          : ApplianceCluster5.fromMap(
              (map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null
          ? null
          : EdgeCluster5.fromMap(
              (map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null
          ? null
          : GkeCluster6.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null
          ? null
          : KubernetesResource5.fromMap(
              (map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null
          ? null
          : MultiCloudCluster5.fromMap(
              (map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null
          ? null
          : OnPremCluster5.fromMap(
              (map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
