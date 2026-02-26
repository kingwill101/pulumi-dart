// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_tls_info_response.dart';

/// Result data returned by getTargetServer.
class GetTargetServerResult {
  /// Optional. A human-readable description of this TargetServer.
  final String description;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final String host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final bool isEnabled;

  /// The resource id of this target server. Values must match the regular expression
  final String name;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final int port;

  /// Immutable. The protocol used by this TargetServer.
  final String protocol;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  final GoogleCloudApigeeV1TlsInfoResponse sSLInfo;

  GetTargetServerResult({
    required this.description,
    required this.host,
    required this.isEnabled,
    required this.name,
    required this.port,
    required this.protocol,
    required this.sSLInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['host'] = host;
    map['isEnabled'] = isEnabled;
    map['name'] = name;
    map['port'] = port;
    map['protocol'] = protocol;
    map['sSLInfo'] = sSLInfo.toMap();
    return map;
  }

  factory GetTargetServerResult.fromMap(Map<String, dynamic> map) {
    return GetTargetServerResult(
      description: map['description'] as String,
      host: map['host'] as String,
      isEnabled: map['isEnabled'] as bool,
      name: map['name'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      sSLInfo: GoogleCloudApigeeV1TlsInfoResponse.fromMap(
          (map['sSLInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
