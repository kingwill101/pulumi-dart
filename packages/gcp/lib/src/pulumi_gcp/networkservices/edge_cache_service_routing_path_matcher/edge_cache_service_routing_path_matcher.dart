// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../edge_cache_service_routing_path_matcher_route_rule/edge_cache_service_routing_path_matcher_route_rule.dart';

class EdgeCacheServiceRoutingPathMatcher {
  /// A human-readable description of the resource.
  final String? description;

  /// The name to which this PathMatcher is referred by the HostRule.
  final String name;

  /// The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods.
  /// Structure is documented below.
  final List<EdgeCacheServiceRoutingPathMatcherRouteRule> routeRules;

  EdgeCacheServiceRoutingPathMatcher({
    this.description,
    required this.name,
    required this.routeRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    map['routeRules'] = pulumi.Input.encodeList<
        EdgeCacheServiceRoutingPathMatcherRouteRule,
        Map<String, dynamic>>(routeRules, (value) => value.toMap());
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcher.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcher(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      routeRules:
          pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRule>(
              map['routeRules'],
              (value) => EdgeCacheServiceRoutingPathMatcherRouteRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
