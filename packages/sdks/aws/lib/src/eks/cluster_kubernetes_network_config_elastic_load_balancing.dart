// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKubernetesNetworkConfigElasticLoadBalancing {
  /// Indicates if the load balancing capability is enabled on your EKS Auto Mode cluster. If the load balancing capability is enabled, EKS Auto Mode will create and delete load balancers in your Amazon Web Services account.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterKubernetesNetworkConfigElasticLoadBalancing].
  /// [enabled] Indicates if the load balancing capability is enabled on your EKS Auto Mode cluster. If the load balancing capability is enabled, EKS Auto Mode will create and delete load balancers in your Amazon Web Services account.
  ClusterKubernetesNetworkConfigElasticLoadBalancing({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterKubernetesNetworkConfigElasticLoadBalancing(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
