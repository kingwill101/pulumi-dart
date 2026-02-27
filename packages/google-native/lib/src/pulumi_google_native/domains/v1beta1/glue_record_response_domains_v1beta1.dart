// ignore_for_file: unused_element, unnecessary_cast

/// Defines a host on your domain that is a DNS name server for your domain and/or other domains. Glue records are a way of making the IP address of a name server known, even when it serves DNS queries for its parent domain. For example, when `ns.example.com` is a name server for `example.com`, the host `ns.example.com` must have a glue record to break the circular DNS reference.
class GlueRecordResponseDomainsV1beta1 {
  /// Domain name of the host in Punycode format.
  final String hostName;

  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address` must be set.
  final List<String> ipv4Addresses;

  /// List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address` must be set.
  final List<String> ipv6Addresses;

  GlueRecordResponseDomainsV1beta1({
    required this.hostName,
    required this.ipv4Addresses,
    required this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostName'] = hostName;
    map['ipv4Addresses'] = ipv4Addresses;
    map['ipv6Addresses'] = ipv6Addresses;
    return map;
  }

  factory GlueRecordResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return GlueRecordResponseDomainsV1beta1(
      hostName: map['hostName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
    );
  }
}
