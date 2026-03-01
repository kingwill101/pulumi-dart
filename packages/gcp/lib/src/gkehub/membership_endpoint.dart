// ignore_for_file: unused_element, unnecessary_cast

import 'membership_endpoint_gke_cluster.dart';

class MembershipEndpoint {
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final MembershipEndpointGkeCluster? gkeCluster;

  /// Creates a new [MembershipEndpoint].
  /// [gkeCluster] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  MembershipEndpoint({this.gkeCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeCluster': ?gkeCluster == null ? null : gkeCluster!.toMap(),
    };
  }

  factory MembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint(
      gkeCluster: map['gkeCluster'] == null
          ? null
          : MembershipEndpointGkeCluster.fromMap(
              (map['gkeCluster'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
