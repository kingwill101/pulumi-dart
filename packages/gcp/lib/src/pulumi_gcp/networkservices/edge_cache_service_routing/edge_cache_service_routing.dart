// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../edge_cache_service_routing_host_rule/edge_cache_service_routing_host_rule.dart';
import '../edge_cache_service_routing_path_matcher/edge_cache_service_routing_path_matcher.dart';

class EdgeCacheServiceRouting {
  /// The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply.
  /// Structure is documented below.
  final List<EdgeCacheServiceRoutingHostRule> hostRules;

  /// The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL's host portion.
  /// Structure is documented below.
  final List<EdgeCacheServiceRoutingPathMatcher> pathMatchers;

  EdgeCacheServiceRouting({
    required this.hostRules,
    required this.pathMatchers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostRules'] =
        Input.encodeList<EdgeCacheServiceRoutingHostRule, Map<String, dynamic>>(
            hostRules, (value) => value.toMap());
    map['pathMatchers'] = Input.encodeList<EdgeCacheServiceRoutingPathMatcher,
        Map<String, dynamic>>(pathMatchers, (value) => value.toMap());
    return map;
  }

  factory EdgeCacheServiceRouting.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRouting(
      hostRules: Input.decodeList<EdgeCacheServiceRoutingHostRule>(
          map['hostRules'],
          (value) => EdgeCacheServiceRoutingHostRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      pathMatchers: Input.decodeList<EdgeCacheServiceRoutingPathMatcher>(
          map['pathMatchers'],
          (value) => EdgeCacheServiceRoutingPathMatcher.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
