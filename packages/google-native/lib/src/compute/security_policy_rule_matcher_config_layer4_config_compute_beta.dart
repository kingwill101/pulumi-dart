// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta {
  /// The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP protocol number.
  final String? ipProtocol;

  /// An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ["22"], ["80","443"], and ["12345-12349"]. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String>? ports;

  /// Creates a new [SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta].
  /// [ipProtocol] The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP protocol number.
  /// [ports] An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ["22"], ["80","443"], and ["12345-12349"]. This field may only be specified when versioned_expr is set to FIREWALL.
  SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta({
    this.ipProtocol,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipProtocolValue = ipProtocol;
    if (ipProtocolValue != null) {
      map['ipProtocol'] = ipProtocolValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta(
      ipProtocol:
          map['ipProtocol'] == null ? null : map['ipProtocol'] as String,
      ports:
          map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}
