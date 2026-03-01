// ignore_for_file: unused_element, unnecessary_cast


class EndpointCustomDnsConfig {
  /// The fully qualified domain name to the `private_dns_zone`.
  final String? fqdn;
  /// A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  final List<String>? ipAddresses;

  /// Creates a new [EndpointCustomDnsConfig].
  /// [fqdn] The fully qualified domain name to the `private_dns_zone`.
  /// [ipAddresses] A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  EndpointCustomDnsConfig({
    this.fqdn,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory EndpointCustomDnsConfig.fromMap(Map<String, dynamic> map) {
    return EndpointCustomDnsConfig(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}

