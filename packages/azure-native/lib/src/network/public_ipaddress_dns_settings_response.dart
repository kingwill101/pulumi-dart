// ignore_for_file: unused_element, unnecessary_cast


/// Contains FQDN of the DNS record associated with the public IP address.
class PublicIPAddressDnsSettingsResponse {
  /// The domain name label. The concatenation of the domain name label and the regionalized DNS zone make up the fully qualified domain name associated with the public IP address. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  final String? domainNameLabel;
  /// The domain name label scope. If a domain name label and a domain name label scope are specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN.
  final String? domainNameLabelScope;
  /// The Fully Qualified Domain Name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  final String? fqdn;
  /// The reverse FQDN. A user-visible, fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  final String? reverseFqdn;

  /// Creates a new [PublicIPAddressDnsSettingsResponse].
  /// [domainNameLabel] The domain name label. The concatenation of the domain name label and the regionalized DNS zone make up the fully qualified domain name associated with the public IP address. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  /// [domainNameLabelScope] The domain name label scope. If a domain name label and a domain name label scope are specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN.
  /// [fqdn] The Fully Qualified Domain Name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  /// [reverseFqdn] The reverse FQDN. A user-visible, fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  PublicIPAddressDnsSettingsResponse({
    this.domainNameLabel,
    this.domainNameLabelScope,
    this.fqdn,
    this.reverseFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': ?domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
      'fqdn': ?fqdn,
      'reverseFqdn': ?reverseFqdn,
    };
  }

  factory PublicIPAddressDnsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressDnsSettingsResponse(
      domainNameLabel: map['domainNameLabel'] == null ? null : map['domainNameLabel'] as String,
      domainNameLabelScope: map['domainNameLabelScope'] == null ? null : map['domainNameLabelScope'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      reverseFqdn: map['reverseFqdn'] == null ? null : map['reverseFqdn'] as String,
    );
  }
}

