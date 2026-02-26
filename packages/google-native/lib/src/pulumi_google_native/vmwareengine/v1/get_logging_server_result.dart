// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLoggingServer.
class GetLoggingServerResult {
  /// Creation time of this resource.
  final String createTime;

  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  final String hostname;

  /// The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  final String name;

  /// Port number at which the logging server receives logs.
  final int port;

  /// Protocol used by vCenter to send logs to a logging server.
  final String protocol;

  /// The type of component that produces logs that will be forwarded to this logging server.
  final String sourceType;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Last update time of this resource.
  final String updateTime;

  GetLoggingServerResult({
    required this.createTime,
    required this.hostname,
    required this.name,
    required this.port,
    required this.protocol,
    required this.sourceType,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['hostname'] = hostname;
    map['name'] = name;
    map['port'] = port;
    map['protocol'] = protocol;
    map['sourceType'] = sourceType;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetLoggingServerResult.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerResult(
      createTime: map['createTime'] as String,
      hostname: map['hostname'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      sourceType: map['sourceType'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
