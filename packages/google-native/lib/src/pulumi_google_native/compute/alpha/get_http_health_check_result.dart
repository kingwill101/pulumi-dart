// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHttpHealthCheck.
class GetHttpHealthCheckResult {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int healthyThreshold;

  /// The value of the host header in the HTTP health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  final String host;

  /// Type of the resource. Always compute#httpHealthCheck for HTTP health checks.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The TCP port number for the HTTP health check request. The default value is 80.
  final int port;

  /// The request path of the HTTP health check request. The default value is /. This field does not support query parameters. Must comply with RFC3986.
  final String requestPath;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final int timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int unhealthyThreshold;

  GetHttpHealthCheckResult({
    required this.checkIntervalSec,
    required this.creationTimestamp,
    required this.description,
    required this.healthyThreshold,
    required this.host,
    required this.kind,
    required this.name,
    required this.port,
    required this.requestPath,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.timeoutSec,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkIntervalSec'] = checkIntervalSec;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['healthyThreshold'] = healthyThreshold;
    map['host'] = host;
    map['kind'] = kind;
    map['name'] = name;
    map['port'] = port;
    map['requestPath'] = requestPath;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['timeoutSec'] = timeoutSec;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory GetHttpHealthCheckResult.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckResult(
      checkIntervalSec: map['checkIntervalSec'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      healthyThreshold: map['healthyThreshold'] as int,
      host: map['host'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      requestPath: map['requestPath'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      timeoutSec: map['timeoutSec'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
