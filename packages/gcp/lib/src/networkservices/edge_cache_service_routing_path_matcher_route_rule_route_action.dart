// ignore_for_file: unused_element, unnecessary_cast

import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cdn_policy.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cors_policy.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_url_rewrite.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction {
  /// The policy to use for defining caching and signed request behaviour for requests that match this route.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy?
      cdnPolicy;

  /// Setting the compression mode to automatic enables dynamic compression for every eligible response.
  /// When dynamic compression is enabled, it is recommended to also set a cache policy to maximize efficiency.
  /// Possible values are: `DISABLED`, `AUTOMATIC`.
  final String? compressionMode;

  /// CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy?
      corsPolicy;

  /// The URL rewrite configuration for requests that match this route.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite?
      urlRewrite;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction].
  /// [cdnPolicy] The policy to use for defining caching and signed request behaviour for requests that match this route.
  /// [compressionMode] Setting the compression mode to automatic enables dynamic compression for every eligible response.
  /// [corsPolicy] CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set.
  /// [urlRewrite] The URL rewrite configuration for requests that match this route.
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction({
    this.cdnPolicy,
    this.compressionMode,
    this.corsPolicy,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = cdnPolicyValue.toMap();
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] = compressionModeValue;
    }
    final corsPolicyValue = corsPolicy;
    if (corsPolicyValue != null) {
      map['corsPolicy'] = corsPolicyValue.toMap();
    }
    final urlRewriteValue = urlRewrite;
    if (urlRewriteValue != null) {
      map['urlRewrite'] = urlRewriteValue.toMap();
    }
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction(
      cdnPolicy: map['cdnPolicy'] == null
          ? null
          : EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy
              .fromMap((map['cdnPolicy'] as Map).cast<String, dynamic>()),
      compressionMode: map['compressionMode'] == null
          ? null
          : map['compressionMode'] as String,
      corsPolicy: map['corsPolicy'] == null
          ? null
          : EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy
              .fromMap((map['corsPolicy'] as Map).cast<String, dynamic>()),
      urlRewrite: map['urlRewrite'] == null
          ? null
          : EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite
              .fromMap((map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
