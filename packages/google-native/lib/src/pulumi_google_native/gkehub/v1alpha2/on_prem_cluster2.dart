// ignore_for_file: unused_element, unnecessary_cast

import 'on_prem_cluster_cluster_type2.dart';

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremCluster2 {
  /// Immutable. Whether the cluster is an admin cluster.
  final bool? adminCluster;

  /// Immutable. The on prem cluster's type.
  final OnPremClusterClusterType2? clusterType;

  /// Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  final String? resourceLink;

  OnPremCluster2({
    this.adminCluster,
    this.clusterType,
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminClusterValue = adminCluster;
    if (adminClusterValue != null) {
      map['adminCluster'] = adminClusterValue;
    }
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue.value;
    }
    final resourceLinkValue = resourceLink;
    if (resourceLinkValue != null) {
      map['resourceLink'] = resourceLinkValue;
    }
    return map;
  }

  factory OnPremCluster2.fromMap(Map<String, dynamic> map) {
    return OnPremCluster2(
      adminCluster:
          map['adminCluster'] == null ? null : map['adminCluster'] as bool,
      clusterType: map['clusterType'] == null
          ? null
          : OnPremClusterClusterType2.fromValue(map['clusterType'] as String),
      resourceLink:
          map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}
