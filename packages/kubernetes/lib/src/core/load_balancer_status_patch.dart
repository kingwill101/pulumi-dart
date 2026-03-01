// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_ingress_patch.dart';

/// LoadBalancerStatus represents the status of a load-balancer.
class LoadBalancerStatusPatch {
  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  final List<LoadBalancerIngressPatch>? ingress;

  /// Creates a new [LoadBalancerStatusPatch].
  /// [ingress] Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  LoadBalancerStatusPatch({
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress': ?ingress == null ? null : pulumi.Input.encodeList<LoadBalancerIngressPatch, Map<String, dynamic>>(ingress!, (value) => value.toMap()),
    };
  }

  factory LoadBalancerStatusPatch.fromMap(Map<String, dynamic> map) {
    return LoadBalancerStatusPatch(
      ingress: map['ingress'] == null ? null : pulumi.Input.decodeList<LoadBalancerIngressPatch>(map['ingress'], (value) => LoadBalancerIngressPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

