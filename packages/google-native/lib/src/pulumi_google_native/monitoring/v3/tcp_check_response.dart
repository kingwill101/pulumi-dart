// ignore_for_file: unused_element, unnecessary_cast

import 'ping_config_response.dart';

/// Information required for a TCP Uptime check request.
class TcpCheckResponse {
  /// Contains information needed to add pings to a TCP check.
  final PingConfigResponse pingConfig;

  /// The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  final int port;

  TcpCheckResponse({
    required this.pingConfig,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pingConfig'] = pingConfig.toMap();
    map['port'] = port;
    return map;
  }

  factory TcpCheckResponse.fromMap(Map<String, dynamic> map) {
    return TcpCheckResponse(
      pingConfig: PingConfigResponse.fromMap(
          (map['pingConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
    );
  }
}
