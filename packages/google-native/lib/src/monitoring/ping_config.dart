// ignore_for_file: unused_element, unnecessary_cast

/// Information involved in sending ICMP pings alongside public HTTP/TCP checks. For HTTP, the pings are performed for each part of the redirect chain.
class PingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final int? pingsCount;

  /// Creates a new [PingConfig].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  PingConfig({
    this.pingsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pingsCountValue = pingsCount;
    if (pingsCountValue != null) {
      map['pingsCount'] = pingsCountValue;
    }
    return map;
  }

  factory PingConfig.fromMap(Map<String, dynamic> map) {
    return PingConfig(
      pingsCount: map['pingsCount'] == null ? null : map['pingsCount'] as int,
    );
  }
}
