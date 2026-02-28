// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyRuleLocalDataLocalData {
  /// For example, www.example.com.
  final String name;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
  final List<String>? rrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by
  /// resolvers.
  final int? ttl;

  /// One of valid DNS resource types.
  /// Possible values are: `A`, `AAAA`, `CAA`, `CNAME`, `DNSKEY`, `DS`, `HTTPS`, `IPSECVPNKEY`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, `TXT`.
  final String type;

  /// Creates a new [ResponsePolicyRuleLocalDataLocalData].
  /// [name] For example, www.example.com.
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by
  /// [type] One of valid DNS resource types.
  ResponsePolicyRuleLocalDataLocalData({
    required this.name,
    this.rrdatas,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    map['type'] = type;
    return map;
  }

  factory ResponsePolicyRuleLocalDataLocalData.fromMap(
      Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataLocalData(
      name: map['name'] as String,
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}
