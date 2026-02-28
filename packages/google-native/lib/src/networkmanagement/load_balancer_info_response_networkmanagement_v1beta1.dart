// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_response_networkmanagement_v1beta1.dart';

/// For display only. Metadata associated with a load balancer.
class LoadBalancerInfoResponseNetworkmanagementV1beta1 {
  /// Type of load balancer's backend configuration.
  final String backendType;

  /// Backend configuration URI.
  final String backendUri;

  /// Information for the loadbalancer backends.
  final List<LoadBalancerBackendResponseNetworkmanagementV1beta1> backends;

  /// URI of the health check for the load balancer. Deprecated and no longer populated as different load balancer backends might have different health checks.
  final String healthCheckUri;

  /// Type of the load balancer.
  final String loadBalancerType;

  /// Creates a new [LoadBalancerInfoResponseNetworkmanagementV1beta1].
  /// [backendType] Type of load balancer's backend configuration.
  /// [backendUri] Backend configuration URI.
  /// [backends] Information for the loadbalancer backends.
  /// [healthCheckUri] URI of the health check for the load balancer. Deprecated and no longer populated as different load balancer backends might have different health checks.
  /// [loadBalancerType] Type of the load balancer.
  LoadBalancerInfoResponseNetworkmanagementV1beta1({
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
    map['backends'] = pulumi.Input.encodeList<
        LoadBalancerBackendResponseNetworkmanagementV1beta1,
        Map<String, dynamic>>(backends, (value) => value.toMap());
    map['healthCheckUri'] = healthCheckUri;
    map['loadBalancerType'] = loadBalancerType;
    return map;
  }

  factory LoadBalancerInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerInfoResponseNetworkmanagementV1beta1(
      backendType: map['backendType'] as String,
      backendUri: map['backendUri'] as String,
      backends: pulumi.Input.decodeList<
              LoadBalancerBackendResponseNetworkmanagementV1beta1>(
          map['backends'],
          (value) =>
              LoadBalancerBackendResponseNetworkmanagementV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      healthCheckUri: map['healthCheckUri'] as String,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
