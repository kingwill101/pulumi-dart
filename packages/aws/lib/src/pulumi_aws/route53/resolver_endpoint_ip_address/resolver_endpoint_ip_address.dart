// ignore_for_file: unused_element, unnecessary_cast

class ResolverEndpointIpAddress {
  /// IPv4 address in the subnet that you want to use for DNS queries.
  final String? ip;
  final String? ipId;

  /// IPv6 address in the subnet that you want to use for DNS queries.
  final String? ipv6;

  /// ID of the subnet that contains the IP address.
  final String subnetId;

  ResolverEndpointIpAddress({
    this.ip,
    this.ipId,
    this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipValue = ip;
    if (ipValue != null) {
      map['ip'] = ipValue;
    }
    final ipIdValue = ipId;
    if (ipIdValue != null) {
      map['ipId'] = ipIdValue;
    }
    final ipv6Value = ipv6;
    if (ipv6Value != null) {
      map['ipv6'] = ipv6Value;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory ResolverEndpointIpAddress.fromMap(Map<String, dynamic> map) {
    return ResolverEndpointIpAddress(
      ip: map['ip'] == null ? null : map['ip'] as String,
      ipId: map['ipId'] == null ? null : map['ipId'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
