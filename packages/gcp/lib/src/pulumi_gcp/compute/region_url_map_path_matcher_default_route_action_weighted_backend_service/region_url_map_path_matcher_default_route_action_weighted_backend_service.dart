// ignore_for_file: unused_element, unnecessary_cast

import '../region_url_map_path_matcher_default_route_action_weighted_backend_service_header_action/region_url_map_path_matcher_default_route_action_weighted_backend_service_header_action.dart';

class RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendService {
  /// The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  final String? backendService;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction?
      headerAction;

  /// Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) .
  /// The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy.
  /// The value must be from 0 to 1000.
  final int? weight;

  RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendService({
    this.backendService,
    this.headerAction,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendServiceValue = backendService;
    if (backendServiceValue != null) {
      map['backendService'] = backendServiceValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendService.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendService(
      backendService: map['backendService'] == null
          ? null
          : map['backendService'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction
              .fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
