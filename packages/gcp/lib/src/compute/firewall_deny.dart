// ignore_for_file: unused_element, unnecessary_cast

class FirewallDeny {
  /// An optional list of ports to which this rule applies. This field
  /// is only applicable for UDP or TCP protocol. Each entry must be
  /// either an integer or a range. If not specified, this rule
  /// applies to connections through any port.
  /// Example inputs include: [22], [80, 443], and
  /// ["12345-12349"].
  final List<String>? ports;

  /// The IP protocol to which this rule applies. The protocol type is
  /// required when creating a firewall rule. This value can either be
  /// one of the following well known protocol strings (tcp, udp,
  /// icmp, esp, ah, sctp, ipip, all), or the IP protocol number.
  final String protocol;

  /// Creates a new [FirewallDeny].
  /// [ports] An optional list of ports to which this rule applies. This field
  /// [protocol] The IP protocol to which this rule applies. The protocol type is
  FirewallDeny({this.ports, required this.protocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ports': ?ports, 'protocol': protocol};
  }

  factory FirewallDeny.fromMap(Map<String, dynamic> map) {
    return FirewallDeny(
      ports: map['ports'] == null
          ? null
          : (map['ports'] as List).cast<String>(),
      protocol: map['protocol'] as String,
    );
  }
}
