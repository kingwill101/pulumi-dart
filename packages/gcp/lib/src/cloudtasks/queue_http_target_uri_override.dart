// ignore_for_file: unused_element, unnecessary_cast

import 'queue_http_target_uri_override_path_override.dart';
import 'queue_http_target_uri_override_query_override.dart';

class QueueHttpTargetUriOverride {
  /// Host override.
  /// When specified, replaces the host part of the task URL.
  /// For example, if the task URL is "https://www.google.com", and host value
  /// is set to "example.net", the overridden URI will be changed to "https://example.net".
  /// Host value cannot be an empty string (INVALID_ARGUMENT).
  final String? host;
  /// URI path.
  /// When specified, replaces the existing path of the task URL.
  /// Setting the path value to an empty string clears the URI path segment.
  /// Structure is documented below.
  final QueueHttpTargetUriOverridePathOverride? pathOverride;
  /// Port override.
  /// When specified, replaces the port part of the task URI.
  /// For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo.
  /// Note that the port value must be a positive integer.
  /// Setting the port to 0 (Zero) clears the URI port.
  final String? port;
  /// URI query.
  /// When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// Structure is documented below.
  final QueueHttpTargetUriOverrideQueryOverride? queryOverride;
  /// Scheme override.
  /// When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// Possible values are: `HTTP`, `HTTPS`.
  final String? scheme;
  /// URI Override Enforce Mode
  /// When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  /// Possible values are: `ALWAYS`, `IF_NOT_EXISTS`.
  final String? uriOverrideEnforceMode;

  /// Creates a new [QueueHttpTargetUriOverride].
  /// [host] Host override.
  /// [pathOverride] URI path.
  /// [port] Port override.
  /// [queryOverride] URI query.
  /// [scheme] Scheme override.
  /// [uriOverrideEnforceMode] URI Override Enforce Mode
  QueueHttpTargetUriOverride({
    this.host,
    this.pathOverride,
    this.port,
    this.queryOverride,
    this.scheme,
    this.uriOverrideEnforceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'pathOverride': ?pathOverride == null ? null : pathOverride!.toMap(),
      'port': ?port,
      'queryOverride': ?queryOverride == null ? null : queryOverride!.toMap(),
      'scheme': ?scheme,
      'uriOverrideEnforceMode': ?uriOverrideEnforceMode,
    };
  }

  factory QueueHttpTargetUriOverride.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetUriOverride(
      host: map['host'] == null ? null : map['host'] as String,
      pathOverride: map['pathOverride'] == null ? null : QueueHttpTargetUriOverridePathOverride.fromMap((map['pathOverride'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as String,
      queryOverride: map['queryOverride'] == null ? null : QueueHttpTargetUriOverrideQueryOverride.fromMap((map['queryOverride'] as Map).cast<String, dynamic>()),
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
      uriOverrideEnforceMode: map['uriOverrideEnforceMode'] == null ? null : map['uriOverrideEnforceMode'] as String,
    );
  }
}

