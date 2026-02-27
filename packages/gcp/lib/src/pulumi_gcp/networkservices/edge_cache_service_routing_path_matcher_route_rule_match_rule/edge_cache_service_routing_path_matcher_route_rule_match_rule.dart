// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../edge_cache_service_routing_path_matcher_route_rule_match_rule_header_match/edge_cache_service_routing_path_matcher_route_rule_match_rule_header_match.dart';
import '../edge_cache_service_routing_path_matcher_route_rule_match_rule_query_parameter_match/edge_cache_service_routing_path_matcher_route_rule_match_rule_query_parameter_match.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule {
  /// For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL.
  final String? fullPathMatch;

  /// Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  /// Structure is documented below.
  final List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch>?
      headerMatches;

  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  final bool? ignoreCase;

  /// For satisfying the matchRule condition, the path of the request
  /// must match the wildcard pattern specified in pathTemplateMatch
  /// after removing any query parameters and anchor that may be part
  /// of the original URL.
  /// pathTemplateMatch must be between 1 and 255 characters
  /// (inclusive).  The pattern specified by pathTemplateMatch may
  /// have at most 5 wildcard operators and at most 5 variable
  /// captures in total.
  final String? pathTemplateMatch;

  /// For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /.
  final String? prefixMatch;

  /// Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request.
  /// Structure is documented below.
  final List<
          EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch>?
      queryParameterMatches;

  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule({
    this.fullPathMatch,
    this.headerMatches,
    this.ignoreCase,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.queryParameterMatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fullPathMatchValue = fullPathMatch;
    if (fullPathMatchValue != null) {
      map['fullPathMatch'] = fullPathMatchValue;
    }
    final headerMatchesValue = headerMatches;
    if (headerMatchesValue != null) {
      map['headerMatches'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch,
          Map<String, dynamic>>(headerMatchesValue, (value) => value.toMap());
    }
    final ignoreCaseValue = ignoreCase;
    if (ignoreCaseValue != null) {
      map['ignoreCase'] = ignoreCaseValue;
    }
    final pathTemplateMatchValue = pathTemplateMatch;
    if (pathTemplateMatchValue != null) {
      map['pathTemplateMatch'] = pathTemplateMatchValue;
    }
    final prefixMatchValue = prefixMatch;
    if (prefixMatchValue != null) {
      map['prefixMatch'] = prefixMatchValue;
    }
    final queryParameterMatchesValue = queryParameterMatches;
    if (queryParameterMatchesValue != null) {
      map['queryParameterMatches'] = pulumi.Input.encodeList<
          EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch,
          Map<String,
              dynamic>>(queryParameterMatchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule(
      fullPathMatch:
          map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headerMatches: map['headerMatches'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch>(
              map['headerMatches'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch
                      .fromMap((value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      pathTemplateMatch: map['pathTemplateMatch'] == null
          ? null
          : map['pathTemplateMatch'] as String,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameterMatches: map['queryParameterMatches'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch>(
              map['queryParameterMatches'],
              (value) =>
                  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
