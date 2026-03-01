// ignore_for_file: unused_element, unnecessary_cast

class ResolverEndpointIpAddress {
  /// IPv4 address in the subnet that you want to use for DNS queries.
  final String? ip;
  final String? ipId;

  /// IPv6 address in the subnet that you want to use for DNS queries.
  final String? ipv6;

  /// ID of the subnet that contains the IP address.
  final String subnetId;

  /// Creates a new [ResolverEndpointIpAddress].
  /// [ip] IPv4 address in the subnet that you want to use for DNS queries.
  /// [ipId] Optional.
  /// [ipv6] IPv6 address in the subnet that you want to use for DNS queries.
  /// [subnetId] ID of the subnet that contains the IP address.
  ResolverEndpointIpAddress({
    this.ip,
    this.ipId,
    this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'ipId': ?ipId,
      'ipv6': ?ipv6,
      'subnetId': subnetId,
    };
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
