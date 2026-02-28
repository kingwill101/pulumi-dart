// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_route_rule_match_rule_header_match.dart';
import 'region_url_map_path_matcher_route_rule_match_rule_metadata_filter.dart';
import 'region_url_map_path_matcher_route_rule_match_rule_query_parameter_match.dart';

class RegionUrlMapPathMatcherRouteRuleMatchRule {
  /// For satisfying the matchRule condition, the path of the request must exactly
  /// match the value specified in fullPathMatch after removing any query parameters
  /// and anchor that may be part of the original URL. FullPathMatch must be between 1
  /// and 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must
  /// be specified.
  final String? fullPathMatch;

  /// Specifies a list of header match criteria, all of which must match corresponding
  /// headers in the request.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch>?
      headerMatches;

  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  /// Defaults to false.
  final bool? ignoreCase;

  /// Opaque filter criteria used by Loadbalancer to restrict routing configuration to
  /// a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS
  /// clients present node metadata. If a match takes place, the relevant routing
  /// configuration is made available to those proxies. For each metadataFilter in
  /// this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the
  /// filterLabels must match the corresponding label provided in the metadata. If its
  /// filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match
  /// with corresponding labels in the provided metadata. metadataFilters specified
  /// here can be overrides those specified in ForwardingRule that refers to this
  /// UrlMap. metadataFilters only applies to Loadbalancers that have their
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilter>?
      metadataFilters;

  /// For satisfying the matchRule condition, the path of the request
  /// must match the wildcard pattern specified in pathTemplateMatch
  /// after removing any query parameters and anchor that may be part
  /// of the original URL.
  /// pathTemplateMatch must be between 1 and 255 characters
  /// (inclusive).  The pattern specified by pathTemplateMatch may
  /// have at most 5 wildcard operators and at most 5 variable
  /// captures in total.
  final String? pathTemplateMatch;

  /// For satisfying the matchRule condition, the request's path must begin with the
  /// specified prefixMatch. prefixMatch must begin with a /. The value must be
  /// between 1 and 1024 characters. Only one of prefixMatch, fullPathMatch or
  /// regexMatch must be specified.
  final String? prefixMatch;

  /// Specifies a list of query parameter match criteria, all of which must match
  /// corresponding query parameters in the request.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch>?
      queryParameterMatches;

  /// For satisfying the matchRule condition, the path of the request must satisfy the
  /// regular expression specified in regexMatch after removing any query parameters
  /// and anchor supplied with the original URL. For regular expression grammar please
  /// see en.cppreference.com/w/cpp/regex/ecmascript  Only one of prefixMatch,
  /// fullPathMatch or regexMatch must be specified.
  final String? regexMatch;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRule].
  /// [fullPathMatch] For satisfying the matchRule condition, the path of the request must exactly
  /// [headerMatches] Specifies a list of header match criteria, all of which must match corresponding
  /// [ignoreCase] Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  /// [metadataFilters] Opaque filter criteria used by Loadbalancer to restrict routing configuration to
  /// [pathTemplateMatch] For satisfying the matchRule condition, the path of the request
  /// [prefixMatch] For satisfying the matchRule condition, the request's path must begin with the
  /// [queryParameterMatches] Specifies a list of query parameter match criteria, all of which must match
  /// [regexMatch] For satisfying the matchRule condition, the path of the request must satisfy the
  RegionUrlMapPathMatcherRouteRuleMatchRule({
    this.fullPathMatch,
    this.headerMatches,
    this.ignoreCase,
    this.metadataFilters,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.queryParameterMatches,
    this.regexMatch,
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
          RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch,
          Map<String, dynamic>>(headerMatchesValue, (value) => value.toMap());
    }
    final ignoreCaseValue = ignoreCase;
    if (ignoreCaseValue != null) {
      map['ignoreCase'] = ignoreCaseValue;
    }
    final metadataFiltersValue = metadataFilters;
    if (metadataFiltersValue != null) {
      map['metadataFilters'] = pulumi.Input.encodeList<
          RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilter,
          Map<String, dynamic>>(metadataFiltersValue, (value) => value.toMap());
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
              RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch,
              Map<String, dynamic>>(
          queryParameterMatchesValue, (value) => value.toMap());
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRule.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRule(
      fullPathMatch:
          map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headerMatches: map['headerMatches'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch>(
              map['headerMatches'],
              (value) =>
                  RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      metadataFilters: map['metadataFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilter>(
              map['metadataFilters'],
              (value) => RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilter
                  .fromMap((value as Map).cast<String, dynamic>())),
      pathTemplateMatch: map['pathTemplateMatch'] == null
          ? null
          : map['pathTemplateMatch'] as String,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameterMatches: map['queryParameterMatches'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch>(
              map['queryParameterMatches'],
              (value) =>
                  RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch
                      .fromMap((value as Map).cast<String, dynamic>())),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}
