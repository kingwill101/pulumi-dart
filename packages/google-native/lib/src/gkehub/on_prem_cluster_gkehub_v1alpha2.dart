// ignore_for_file: unused_element, unnecessary_cast

import 'on_prem_cluster_cluster_type_gkehub_v1alpha2.dart';

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremClusterGkehubV1alpha2 {
  /// Immutable. Whether the cluster is an admin cluster.
  final bool? adminCluster;

  /// Immutable. The on prem cluster's type.
  final OnPremClusterClusterTypeGkehubV1alpha2? clusterType;

  /// Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  final String? resourceLink;

  /// Creates a new [OnPremClusterGkehubV1alpha2].
  /// [adminCluster] Immutable. Whether the cluster is an admin cluster.
  /// [clusterType] Immutable. The on prem cluster's type.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  OnPremClusterGkehubV1alpha2({
    this.adminCluster,
    this.clusterType,
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCluster': ?adminCluster,
      'clusterType': ?clusterType == null ? null : clusterType!.value,
      'resourceLink': ?resourceLink,
    };
  }

  factory OnPremClusterGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return OnPremClusterGkehubV1alpha2(
      adminCluster: map['adminCluster'] == null
          ? null
          : map['adminCluster'] as bool,
      clusterType: map['clusterType'] == null
          ? null
          : OnPremClusterClusterTypeGkehubV1alpha2.fromValue(
              map['clusterType'] as String,
            ),
      resourceLink: map['resourceLink'] == null
          ? null
          : map['resourceLink'] as String,
    );
  }
}
