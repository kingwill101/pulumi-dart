// ignore_for_file: unused_element, unnecessary_cast

import 'int64_range_match_compute_beta.dart';

/// matchRule criteria for request header matches.
class HttpHeaderMatchComputeBeta {
  /// The value should exactly match contents of exactMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final String? exactMatch;

  /// The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method". When the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true, only non-binary user-specified custom metadata and the `content-type` header are supported. The following transport-level headers cannot be used in header matching rules: `:authority`, `:method`, `:path`, `:scheme`, `user-agent`, `accept-encoding`, `content-encoding`, `grpc-accept-encoding`, `grpc-encoding`, `grpc-previous-rpc-attempts`, `grpc-tags-bin`, `grpc-timeout` and `grpc-trace-bin`.
  final String? headerName;

  /// If set to false, the headerMatch is considered a match if the preceding match criteria are met. If set to true, the headerMatch is considered a match if the preceding match criteria are NOT met. The default setting is false.
  final bool? invertMatch;

  /// The value of the header must start with the contents of prefixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final String? prefixMatch;

  /// A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final bool? presentMatch;

  /// The header value must be an integer and its value must be in the range specified in rangeMatch. If the header does not contain an integer, number or is empty, the match fails. For example for a range [-5, 0] - -3 will match. - 0 will not match. - 0.25 will not match. - -3someString will not match. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. rangeMatch is not supported for load balancers that have loadBalancingScheme set to EXTERNAL.
  final Int64RangeMatchComputeBeta? rangeMatch;

  /// The value of the header must match the regular expression specified in regexMatch. For more information about regular expression syntax, see Syntax. For matching against a port specified in the HTTP request, use a headerMatch with headerName set to PORT and a regular expression that satisfies the RFC2616 Host header's port specifier. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final String? regexMatch;

  /// The value of the header must end with the contents of suffixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final String? suffixMatch;

  /// Creates a new [HttpHeaderMatchComputeBeta].
  /// [exactMatch] The value should exactly match contents of exactMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [headerName] The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method". When the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true, only non-binary user-specified custom metadata and the `content-type` header are supported. The following transport-level headers cannot be used in header matching rules: `:authority`, `:method`, `:path`, `:scheme`, `user-agent`, `accept-encoding`, `content-encoding`, `grpc-accept-encoding`, `grpc-encoding`, `grpc-previous-rpc-attempts`, `grpc-tags-bin`, `grpc-timeout` and `grpc-trace-bin`.
  /// [invertMatch] If set to false, the headerMatch is considered a match if the preceding match criteria are met. If set to true, the headerMatch is considered a match if the preceding match criteria are NOT met. The default setting is false.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [rangeMatch] The header value must be an integer and its value must be in the range specified in rangeMatch. If the header does not contain an integer, number or is empty, the match fails. For example for a range [-5, 0] - -3 will match. - 0 will not match. - 0.25 will not match. - -3someString will not match. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. rangeMatch is not supported for load balancers that have loadBalancingScheme set to EXTERNAL.
  /// [regexMatch] The value of the header must match the regular expression specified in regexMatch. For more information about regular expression syntax, see Syntax. For matching against a port specified in the HTTP request, use a headerMatch with headerName set to PORT and a regular expression that satisfies the RFC2616 Host header's port specifier. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  HttpHeaderMatchComputeBeta({
    this.exactMatch,
    this.headerName,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.rangeMatch,
    this.regexMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactMatchValue = exactMatch;
    if (exactMatchValue != null) {
      map['exactMatch'] = exactMatchValue;
    }
    final headerNameValue = headerName;
    if (headerNameValue != null) {
      map['headerName'] = headerNameValue;
    }
    final invertMatchValue = invertMatch;
    if (invertMatchValue != null) {
      map['invertMatch'] = invertMatchValue;
    }
    final prefixMatchValue = prefixMatch;
    if (prefixMatchValue != null) {
      map['prefixMatch'] = prefixMatchValue;
    }
    final presentMatchValue = presentMatch;
    if (presentMatchValue != null) {
      map['presentMatch'] = presentMatchValue;
    }
    final rangeMatchValue = rangeMatch;
    if (rangeMatchValue != null) {
      map['rangeMatch'] = rangeMatchValue.toMap();
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    final suffixMatchValue = suffixMatch;
    if (suffixMatchValue != null) {
      map['suffixMatch'] = suffixMatchValue;
    }
    return map;
  }

  factory HttpHeaderMatchComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpHeaderMatchComputeBeta(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      headerName:
          map['headerName'] == null ? null : map['headerName'] as String,
      invertMatch:
          map['invertMatch'] == null ? null : map['invertMatch'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      rangeMatch: map['rangeMatch'] == null
          ? null
          : Int64RangeMatchComputeBeta.fromMap(
              (map['rangeMatch'] as Map).cast<String, dynamic>()),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
      suffixMatch:
          map['suffixMatch'] == null ? null : map['suffixMatch'] as String,
    );
  }
}
