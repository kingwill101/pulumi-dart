// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_header_match_response2.dart';
import 'http_query_parameter_match_response2.dart';
import 'metadata_filter_response2.dart';

/// HttpRouteRuleMatch specifies a set of criteria for matching requests to an HttpRouteRule. All specified criteria must be satisfied for a match to occur.
class HttpRouteRuleMatchResponse2 {
  /// For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL. fullPathMatch must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  final String fullPathMatch;

  /// Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  final List<HttpHeaderMatchResponse2> headerMatches;

  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive. The default value is false. ignoreCase must not be used with regexMatch. Not supported when the URL map is bound to a target gRPC proxy.
  final bool ignoreCase;

  /// Opaque filter criteria used by the load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to the load balancer, xDS clients present node metadata. When there is a match, the relevant routing configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadata filters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here is applied after those specified in ForwardingRule that refers to the UrlMap this HttpRouteRuleMatch belongs to. metadataFilters only applies to load balancers that have loadBalancingScheme set to INTERNAL_SELF_MANAGED. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<MetadataFilterResponse2> metadataFilters;

  /// If specified, the route is a pattern match expression that must match the :path header once the query string is removed. A pattern match allows you to match - The value must be between 1 and 1024 characters - The pattern must start with a leading slash ("/") - There may be no more than 5 operators in pattern Precisely one of prefix_match, full_path_match, regex_match or path_template_match must be set.
  final String pathTemplateMatch;

  /// For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /. The value must be from 1 to 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  final String prefixMatch;

  /// Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request. Not supported when the URL map is bound to a target gRPC proxy.
  final List<HttpQueryParameterMatchResponse2> queryParameterMatches;

  /// For satisfying the matchRule condition, the path of the request must satisfy the regular expression specified in regexMatch after removing any query parameters and anchor supplied with the original URL. For more information about regular expression syntax, see Syntax. Only one of prefixMatch, fullPathMatch or regexMatch must be specified. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final String regexMatch;

  HttpRouteRuleMatchResponse2({
    required this.fullPathMatch,
    required this.headerMatches,
    required this.ignoreCase,
    required this.metadataFilters,
    required this.pathTemplateMatch,
    required this.prefixMatch,
    required this.queryParameterMatches,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullPathMatch'] = fullPathMatch;
    map['headerMatches'] =
        Input.encodeList<HttpHeaderMatchResponse2, Map<String, dynamic>>(
            headerMatches, (value) => value.toMap());
    map['ignoreCase'] = ignoreCase;
    map['metadataFilters'] =
        Input.encodeList<MetadataFilterResponse2, Map<String, dynamic>>(
            metadataFilters, (value) => value.toMap());
    map['pathTemplateMatch'] = pathTemplateMatch;
    map['prefixMatch'] = prefixMatch;
    map['queryParameterMatches'] = Input.encodeList<
        HttpQueryParameterMatchResponse2,
        Map<String, dynamic>>(queryParameterMatches, (value) => value.toMap());
    map['regexMatch'] = regexMatch;
    return map;
  }

  factory HttpRouteRuleMatchResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchResponse2(
      fullPathMatch: map['fullPathMatch'] as String,
      headerMatches: Input.decodeList<HttpHeaderMatchResponse2>(
          map['headerMatches'],
          (value) => HttpHeaderMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] as bool,
      metadataFilters: Input.decodeList<MetadataFilterResponse2>(
          map['metadataFilters'],
          (value) => MetadataFilterResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      pathTemplateMatch: map['pathTemplateMatch'] as String,
      prefixMatch: map['prefixMatch'] as String,
      queryParameterMatches: Input.decodeList<HttpQueryParameterMatchResponse2>(
          map['queryParameterMatches'],
          (value) => HttpQueryParameterMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      regexMatch: map['regexMatch'] as String,
    );
  }
}
