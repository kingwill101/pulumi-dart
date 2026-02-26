// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'load_balancer_backend_response2.dart';

/// For display only. Metadata associated with a load balancer.
class LoadBalancerInfoResponse2 {
  /// Type of load balancer's backend configuration.
  final String backendType;

  /// Backend configuration URI.
  final String backendUri;

  /// Information for the loadbalancer backends.
  final List<LoadBalancerBackendResponse2> backends;

  /// URI of the health check for the load balancer. Deprecated and no longer populated as different load balancer backends might have different health checks.
  final String healthCheckUri;

  /// Type of the load balancer.
  final String loadBalancerType;

  LoadBalancerInfoResponse2({
    required this.backendType,
    required this.backendUri,
    required this.backends,
    required this.healthCheckUri,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendType'] = backendType;
    map['backendUri'] = backendUri;
    map['backends'] =
        Input.encodeList<LoadBalancerBackendResponse2, Map<String, dynamic>>(
            backends, (value) => value.toMap());
    map['healthCheckUri'] = healthCheckUri;
    map['loadBalancerType'] = loadBalancerType;
    return map;
  }

  factory LoadBalancerInfoResponse2.fromMap(Map<String, dynamic> map) {
    return LoadBalancerInfoResponse2(
      backendType: map['backendType'] as String,
      backendUri: map['backendUri'] as String,
      backends: Input.decodeList<LoadBalancerBackendResponse2>(
          map['backends'],
          (value) => LoadBalancerBackendResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      healthCheckUri: map['healthCheckUri'] as String,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
