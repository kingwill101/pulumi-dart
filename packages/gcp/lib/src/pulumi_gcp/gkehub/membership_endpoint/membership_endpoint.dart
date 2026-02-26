// ignore_for_file: unused_element, unnecessary_cast

import '../membership_endpoint_gke_cluster/membership_endpoint_gke_cluster.dart';

class MembershipEndpoint {
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final MembershipEndpointGkeCluster? gkeCluster;

  MembershipEndpoint({
    this.gkeCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClusterValue = gkeCluster;
    if (gkeClusterValue != null) {
      map['gkeCluster'] = gkeClusterValue.toMap();
    }
    return map;
  }

  factory MembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint(
      gkeCluster: map['gkeCluster'] == null
          ? null
          : MembershipEndpointGkeCluster.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
