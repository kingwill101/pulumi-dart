// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigTcpCheckPingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final int pingsCount;

  UptimeCheckConfigTcpCheckPingConfig({
    required this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pingsCount'] = pingsCount;
    return map;
  }

  factory UptimeCheckConfigTcpCheckPingConfig.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigTcpCheckPingConfig(
      pingsCount: map['pingsCount'] as int,
    );
  }
}
