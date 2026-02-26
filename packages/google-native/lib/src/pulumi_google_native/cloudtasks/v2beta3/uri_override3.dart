// ignore_for_file: unused_element, unnecessary_cast

import 'path_override3.dart';
import 'query_override3.dart';
import 'uri_override_scheme3.dart';
import 'uri_override_uri_override_enforce_mode3.dart';

/// URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverride3 {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final String? host;

  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final PathOverride3? pathOverride;

  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final String? port;

  /// URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final QueryOverride3? queryOverride;

  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final UriOverrideScheme3? scheme;

  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final UriOverrideUriOverrideEnforceMode3? uriOverrideEnforceMode;

  UriOverride3({
    this.host,
    this.pathOverride,
    this.port,
    this.queryOverride,
    this.scheme,
    this.uriOverrideEnforceMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final pathOverrideValue = pathOverride;
    if (pathOverrideValue != null) {
      map['pathOverride'] = pathOverrideValue.toMap();
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final queryOverrideValue = queryOverride;
    if (queryOverrideValue != null) {
      map['queryOverride'] = queryOverrideValue.toMap();
    }
    final schemeValue = scheme;
    if (schemeValue != null) {
      map['scheme'] = schemeValue.value;
    }
    final uriOverrideEnforceModeValue = uriOverrideEnforceMode;
    if (uriOverrideEnforceModeValue != null) {
      map['uriOverrideEnforceMode'] = uriOverrideEnforceModeValue.value;
    }
    return map;
  }

  factory UriOverride3.fromMap(Map<String, dynamic> map) {
    return UriOverride3(
      host: map['host'] == null ? null : map['host'] as String,
      pathOverride: map['pathOverride'] == null
          ? null
          : PathOverride3.fromMap(
              (map['pathOverride'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as String,
      queryOverride: map['queryOverride'] == null
          ? null
          : QueryOverride3.fromMap(
              (map['queryOverride'] as Map).cast<String, dynamic>()),
      scheme: map['scheme'] == null
          ? null
          : UriOverrideScheme3.fromValue(map['scheme'] as String),
      uriOverrideEnforceMode: map['uriOverrideEnforceMode'] == null
          ? null
          : UriOverrideUriOverrideEnforceMode3.fromValue(
              map['uriOverrideEnforceMode'] as String),
    );
  }
}
