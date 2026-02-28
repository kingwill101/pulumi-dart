// ignore_for_file: unused_element, unnecessary_cast


class UptimeCheckConfigTcpCheckPingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final int pingsCount;

  /// Creates a new [UptimeCheckConfigTcpCheckPingConfig].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  UptimeCheckConfigTcpCheckPingConfig({
    required this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingsCount': pingsCount,
    };
  }

  factory UptimeCheckConfigTcpCheckPingConfig.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigTcpCheckPingConfig(
      pingsCount: map['pingsCount'] as int,
    );
  }
}

