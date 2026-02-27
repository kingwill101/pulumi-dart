// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_membership_endpoint_gke_cluster/get_membership_endpoint_gke_cluster.dart';

class GetMembershipEndpoint {
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  final List<GetMembershipEndpointGkeCluster> gkeClusters;

  GetMembershipEndpoint({
    required this.gkeClusters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusters'] = pulumi.Input.encodeList<
        GetMembershipEndpointGkeCluster,
        Map<String, dynamic>>(gkeClusters, (value) => value.toMap());
    return map;
  }

  factory GetMembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return GetMembershipEndpoint(
      gkeClusters: pulumi.Input.decodeList<GetMembershipEndpointGkeCluster>(
          map['gkeClusters'],
          (value) => GetMembershipEndpointGkeCluster.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
