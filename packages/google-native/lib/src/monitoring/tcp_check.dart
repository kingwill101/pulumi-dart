// ignore_for_file: unused_element, unnecessary_cast

import 'ping_config.dart';

/// Information required for a TCP Uptime check request.
class TcpCheck {
  /// Contains information needed to add pings to a TCP check.
  final PingConfig? pingConfig;

  /// The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  final int? port;

  /// Creates a new [TcpCheck].
  /// [pingConfig] Contains information needed to add pings to a TCP check.
  /// [port] The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  TcpCheck({
    this.pingConfig,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pingConfigValue = pingConfig;
    if (pingConfigValue != null) {
      map['pingConfig'] = pingConfigValue.toMap();
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory TcpCheck.fromMap(Map<String, dynamic> map) {
    return TcpCheck(
      pingConfig: map['pingConfig'] == null
          ? null
          : PingConfig.fromMap(
              (map['pingConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
