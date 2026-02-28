// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigHttpCheckPingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final int pingsCount;

  /// Creates a new [UptimeCheckConfigHttpCheckPingConfig].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  UptimeCheckConfigHttpCheckPingConfig({
    required this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pingsCount'] = pingsCount;
    return map;
  }

  factory UptimeCheckConfigHttpCheckPingConfig.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckPingConfig(
      pingsCount: map['pingsCount'] as int,
    );
  }
}
