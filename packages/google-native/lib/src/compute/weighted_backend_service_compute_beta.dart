// ignore_for_file: unused_element, unnecessary_cast

import 'http_header_action_compute_beta.dart';

/// In contrast to a single BackendService in HttpRouteAction to which all matching traffic is directed to, WeightedBackendService allows traffic to be split across multiple backend services. The volume of traffic for each backend service is proportional to the weight specified in each WeightedBackendService
class WeightedBackendServiceComputeBeta {
  /// The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  final String? backendService;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionComputeBeta? headerAction;
  /// Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) . The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy. The value must be from 0 to 1000.
  final int? weight;

  /// Creates a new [WeightedBackendServiceComputeBeta].
  /// [backendService] The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [weight] Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) . The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy. The value must be from 0 to 1000.
  WeightedBackendServiceComputeBeta({
    this.backendService,
    this.headerAction,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'headerAction': ?headerAction == null ? null : headerAction!.toMap(),
      'weight': ?weight,
    };
  }

  factory WeightedBackendServiceComputeBeta.fromMap(Map<String, dynamic> map) {
    return WeightedBackendServiceComputeBeta(
      backendService: map['backendService'] == null ? null : map['backendService'] as String,
      headerAction: map['headerAction'] == null ? null : HttpHeaderActionComputeBeta.fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

