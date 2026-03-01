// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_path_matcher_default_route_action_weighted_backend_service_header_action.dart';

class URLMapPathMatcherDefaultRouteActionWeightedBackendService {
  /// The full or partial URL to the default BackendService resource. Before forwarding the
  /// request to backendService, the loadbalancer applies any relevant headerActions
  /// specified as part of this backendServiceWeight.
  final String? backendService;

  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing
  /// HttpRouteRule, PathMatcher and UrlMap.
  /// Structure is documented below.
  final URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction?
  headerAction;

  /// Specifies the fraction of traffic sent to backendService, computed as
  /// weight / (sum of all weightedBackendService weights in routeAction) .
  /// The selection of a backend service is determined only for new traffic. Once a user's request
  /// has been directed to a backendService, subsequent requests will be sent to the same backendService
  /// as determined by the BackendService's session affinity policy.
  /// The value must be between 0 and 1000
  final int? weight;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionWeightedBackendService].
  /// [backendService] The full or partial URL to the default BackendService resource. Before forwarding the
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [weight] Specifies the fraction of traffic sent to backendService, computed as
  URLMapPathMatcherDefaultRouteActionWeightedBackendService({
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

  factory URLMapPathMatcherDefaultRouteActionWeightedBackendService.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherDefaultRouteActionWeightedBackendService(
      backendService: map['backendService'] == null
          ? null
          : map['backendService'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>(),
            ),
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
