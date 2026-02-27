// ignore_for_file: unused_element, unnecessary_cast

import 'path_override_response_cloudtasks_v2beta2.dart';
import 'query_override_response_cloudtasks_v2beta2.dart';

/// Uri Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverrideResponseCloudtasksV2beta2 {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final String host;

  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final PathOverrideResponseCloudtasksV2beta2 pathOverride;

  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final String port;

  /// URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final QueryOverrideResponseCloudtasksV2beta2 queryOverride;

  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final String scheme;

  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final String uriOverrideEnforceMode;

  UriOverrideResponseCloudtasksV2beta2({
    required this.host,
    required this.pathOverride,
    required this.port,
    required this.queryOverride,
    required this.scheme,
    required this.uriOverrideEnforceMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['pathOverride'] = pathOverride.toMap();
    map['port'] = port;
    map['queryOverride'] = queryOverride.toMap();
    map['scheme'] = scheme;
    map['uriOverrideEnforceMode'] = uriOverrideEnforceMode;
    return map;
  }

  factory UriOverrideResponseCloudtasksV2beta2.fromMap(
      Map<String, dynamic> map) {
    return UriOverrideResponseCloudtasksV2beta2(
      host: map['host'] as String,
      pathOverride: PathOverrideResponseCloudtasksV2beta2.fromMap(
          (map['pathOverride'] as Map).cast<String, dynamic>()),
      port: map['port'] as String,
      queryOverride: QueryOverrideResponseCloudtasksV2beta2.fromMap(
          (map['queryOverride'] as Map).cast<String, dynamic>()),
      scheme: map['scheme'] as String,
      uriOverrideEnforceMode: map['uriOverrideEnforceMode'] as String,
    );
  }
}
