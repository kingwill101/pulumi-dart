// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_match_compute_beta.dart';
import 'http_query_parameter_match_compute_beta.dart';
import 'metadata_filter_compute_beta.dart';

/// HttpRouteRuleMatch specifies a set of criteria for matching requests to an HttpRouteRule. All specified criteria must be satisfied for a match to occur.
class HttpRouteRuleMatchComputeBeta {
  /// For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. fullPathMatch must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  final String? fullPathMatch;
  /// Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  final List<HttpHeaderMatchComputeBeta>? headerMatches;
  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive. The default value is false. ignoreCase must not be used with regexMatch. Not supported when the URL map is bound to a target gRPC proxy.
  final bool? ignoreCase;
  /// Opaque filter criteria used by the load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to the load balancer, xDS clients present node metadata. When there is a match, the relevant routing configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadata filters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here is applied after those specified in ForwardingRule that refers to the UrlMap this HttpRouteRuleMatch belongs to. metadataFilters only applies to load balancers that have loadBalancingScheme set to INTERNAL_SELF_MANAGED. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<MetadataFilterComputeBeta>? metadataFilters;
  /// If specified, the route is a pattern match expression that must match the :path header once the query string is removed. A pattern match allows you to match - The value must be between 1 and 1024 characters - The pattern must start with a leading slash ("/") - There may be no more than 5 operators in pattern Precisely one of prefix_match, full_path_match, regex_match or path_template_match must be set.
  final String? pathTemplateMatch;
  /// For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /. The value must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  final String? prefixMatch;
  /// Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. Not supported when the URL map is bound to a target gRPC proxy.
  final List<HttpQueryParameterMatchComputeBeta>? queryParameterMatches;
  /// For satisfying the matchRule condition, the path of the request must satisfy the regular expression specified in regexMatch after removing any query parameters and anchor supplied with the original URL. For more information about regular expression syntax, see Syntax. Only one of prefixMatch, fullPathMatch or regexMatch must be specified. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final String? regexMatch;

  /// Creates a new [HttpRouteRuleMatchComputeBeta].
  /// [fullPathMatch] For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. fullPathMatch must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  /// [headerMatches] Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  /// [ignoreCase] Specifies that prefixMatch and fullPathMatch matches are case sensitive. The default value is false. ignoreCase must not be used with regexMatch. Not supported when the URL map is bound to a target gRPC proxy.
  /// [metadataFilters] Opaque filter criteria used by the load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to the load balancer, xDS clients present node metadata. When there is a match, the relevant routing configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadata filters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here is applied after those specified in ForwardingRule that refers to the UrlMap this HttpRouteRuleMatch belongs to. metadataFilters only applies to load balancers that have loadBalancingScheme set to INTERNAL_SELF_MANAGED. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [pathTemplateMatch] If specified, the route is a pattern match expression that must match the :path header once the query string is removed. A pattern match allows you to match - The value must be between 1 and 1024 characters - The pattern must start with a leading slash ("/") - There may be no more than 5 operators in pattern Precisely one of prefix_match, full_path_match, regex_match or path_template_match must be set.
  /// [prefixMatch] For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /. The value must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  /// [queryParameterMatches] Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. Not supported when the URL map is bound to a target gRPC proxy.
  /// [regexMatch] For satisfying the matchRule condition, the path of the request must satisfy the regular expression specified in regexMatch after removing any query parameters and anchor supplied with the original URL. For more information about regular expression syntax, see Syntax. Only one of prefixMatch, fullPathMatch or regexMatch must be specified. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  HttpRouteRuleMatchComputeBeta({
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
    return <String, dynamic>{
      'fullPathMatch': ?fullPathMatch,
      'headerMatches': ?headerMatches == null ? null : pulumi.Input.encodeList<HttpHeaderMatchComputeBeta, Map<String, dynamic>>(headerMatches!, (value) => value.toMap()),
      'ignoreCase': ?ignoreCase,
      'metadataFilters': ?metadataFilters == null ? null : pulumi.Input.encodeList<MetadataFilterComputeBeta, Map<String, dynamic>>(metadataFilters!, (value) => value.toMap()),
      'pathTemplateMatch': ?pathTemplateMatch,
      'prefixMatch': ?prefixMatch,
      'queryParameterMatches': ?queryParameterMatches == null ? null : pulumi.Input.encodeList<HttpQueryParameterMatchComputeBeta, Map<String, dynamic>>(queryParameterMatches!, (value) => value.toMap()),
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpRouteRuleMatchComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchComputeBeta(
      fullPathMatch: map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headerMatches: map['headerMatches'] == null ? null : pulumi.Input.decodeList<HttpHeaderMatchComputeBeta>(map['headerMatches'], (value) => HttpHeaderMatchComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      metadataFilters: map['metadataFilters'] == null ? null : pulumi.Input.decodeList<MetadataFilterComputeBeta>(map['metadataFilters'], (value) => MetadataFilterComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      pathTemplateMatch: map['pathTemplateMatch'] == null ? null : map['pathTemplateMatch'] as String,
      prefixMatch: map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameterMatches: map['queryParameterMatches'] == null ? null : pulumi.Input.decodeList<HttpQueryParameterMatchComputeBeta>(map['queryParameterMatches'], (value) => HttpQueryParameterMatchComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      regexMatch: map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}

