// ignore_for_file: unused_element, unnecessary_cast

import '../urlmap_path_matcher_route_rule_route_action_weighted_backend_service_header_action/urlmap_path_matcher_route_rule_route_action_weighted_backend_service_header_action.dart';

class URLMapPathMatcherRouteRuleRouteActionWeightedBackendService {
  /// The full or partial URL to the default BackendService resource. Before forwarding the
  /// request to backendService, the loadbalancer applies any relevant headerActions
  /// specified as part of this backendServiceWeight.
  final String backendService;

  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing
  /// HttpRouteRule, PathMatcher and UrlMap.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleRouteActionWeightedBackendServiceHeaderAction?
      headerAction;

  /// Specifies the fraction of traffic sent to backendService, computed as
  /// weight / (sum of all weightedBackendService weights in routeAction) .
  /// The selection of a backend service is determined only for new traffic. Once a user's request
  /// has been directed to a backendService, subsequent requests will be sent to the same backendService
  /// as determined by the BackendService's session affinity policy.
  /// The value must be between 0 and 1000
  final int weight;

  URLMapPathMatcherRouteRuleRouteActionWeightedBackendService({
    required this.backendService,
    this.headerAction,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    map['weight'] = weight;
    return map;
  }

  factory URLMapPathMatcherRouteRuleRouteActionWeightedBackendService.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionWeightedBackendService(
      backendService: map['backendService'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : URLMapPathMatcherRouteRuleRouteActionWeightedBackendServiceHeaderAction
              .fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      weight: map['weight'] as int,
    );
  }
}
