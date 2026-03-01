// ignore_for_file: unused_element, unnecessary_cast


/// The properties of domain controller to which SCOM and SQL servers join for AuthN/AuthZ.
class DomainControllerProperties {
  /// IP address of DNS server
  final String? dnsServer;
  /// Fully qualified domain name
  final String? domainName;
  /// Organizational Unit path in which the SCOM servers will be present
  final String? ouPath;

  /// Creates a new [DomainControllerProperties].
  /// [dnsServer] IP address of DNS server
  /// [domainName] Fully qualified domain name
  /// [ouPath] Organizational Unit path in which the SCOM servers will be present
  DomainControllerProperties({
    this.dnsServer,
    this.domainName,
    this.ouPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServer': ?dnsServer,
      'domainName': ?domainName,
      'ouPath': ?ouPath,
    };
  }

  factory DomainControllerProperties.fromMap(Map<String, dynamic> map) {
    return DomainControllerProperties(
      dnsServer: map['dnsServer'] == null ? null : map['dnsServer'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      ouPath: map['ouPath'] == null ? null : map['ouPath'] as String,
    );
  }
}

