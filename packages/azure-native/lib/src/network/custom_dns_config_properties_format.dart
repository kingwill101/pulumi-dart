// ignore_for_file: unused_element, unnecessary_cast


/// Contains custom Dns resolution configuration from customer.
class CustomDnsConfigPropertiesFormat {
  /// Fqdn that resolves to private endpoint ip address.
  final String? fqdn;
  /// A list of private ip addresses of the private endpoint.
  final List<String>? ipAddresses;

  /// Creates a new [CustomDnsConfigPropertiesFormat].
  /// [fqdn] Fqdn that resolves to private endpoint ip address.
  /// [ipAddresses] A list of private ip addresses of the private endpoint.
  CustomDnsConfigPropertiesFormat({
    this.fqdn,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory CustomDnsConfigPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return CustomDnsConfigPropertiesFormat(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}

