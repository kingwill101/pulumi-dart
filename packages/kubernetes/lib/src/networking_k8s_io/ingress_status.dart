// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatus {
  /// loadBalancer contains the current status of the load-balancer.
  final IngressLoadBalancerStatus? loadBalancer;

  /// Creates a new [IngressStatus].
  /// [loadBalancer] loadBalancer contains the current status of the load-balancer.
  IngressStatus({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
    };
  }

  factory IngressStatus.fromMap(Map<String, dynamic> map) {
    return IngressStatus(
      loadBalancer: map['loadBalancer'] == null ? null : IngressLoadBalancerStatus.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

