// ignore_for_file: unused_element, unnecessary_cast

import '../core/load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatusNetworkingK8sIoV1beta1 {
  /// LoadBalancer contains the current status of the load-balancer.
  final LoadBalancerStatus? loadBalancer;

  /// Creates a new [IngressStatusNetworkingK8sIoV1beta1].
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer.
  IngressStatusNetworkingK8sIoV1beta1({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
    };
  }

  factory IngressStatusNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressStatusNetworkingK8sIoV1beta1(
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerStatus.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

