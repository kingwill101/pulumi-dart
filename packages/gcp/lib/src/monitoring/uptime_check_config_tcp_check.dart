// ignore_for_file: unused_element, unnecessary_cast

import 'uptime_check_config_tcp_check_ping_config.dart';

class UptimeCheckConfigTcpCheck {
  /// Contains information needed to add pings to a TCP check.
  /// Structure is documented below.
  final UptimeCheckConfigTcpCheckPingConfig? pingConfig;

  /// The port to the page to run the check against. Will be combined with host (specified within the `monitored_resource`) to construct the full URL.
  final int port;

  /// Creates a new [UptimeCheckConfigTcpCheck].
  /// [pingConfig] Contains information needed to add pings to a TCP check.
  /// [port] The port to the page to run the check against. Will be combined with host (specified within the `monitored_resource`) to construct the full URL.
  UptimeCheckConfigTcpCheck({this.pingConfig, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingConfig': ?pingConfig == null ? null : pingConfig!.toMap(),
      'port': port,
    };
  }

  factory UptimeCheckConfigTcpCheck.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigTcpCheck(
      pingConfig: map['pingConfig'] == null
          ? null
          : UptimeCheckConfigTcpCheckPingConfig.fromMap(
              (map['pingConfig'] as Map).cast<String, dynamic>(),
            ),
      port: map['port'] as int,
    );
  }
}
