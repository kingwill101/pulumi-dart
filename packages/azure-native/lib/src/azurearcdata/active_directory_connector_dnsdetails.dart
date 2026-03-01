// ignore_for_file: unused_element, unnecessary_cast


/// DNS server details
class ActiveDirectoryConnectorDNSDetails {
  /// DNS domain name for which DNS lookups should be forwarded to the Active Directory DNS servers.
  final String? domainName;
  /// List of Active Directory DNS server IP addresses.
  final List<String> nameserverIPAddresses;
  /// Flag indicating whether to prefer Kubernetes DNS server response over AD DNS server response for IP address lookups.
  final bool? preferK8sDnsForPtrLookups;
  /// Replica count for DNS proxy service. Default value is 1.
  final double? replicas;

  /// Creates a new [ActiveDirectoryConnectorDNSDetails].
  /// [domainName] DNS domain name for which DNS lookups should be forwarded to the Active Directory DNS servers.
  /// [nameserverIPAddresses] List of Active Directory DNS server IP addresses.
  /// [preferK8sDnsForPtrLookups] Flag indicating whether to prefer Kubernetes DNS server response over AD DNS server response for IP address lookups.
  /// [replicas] Replica count for DNS proxy service. Default value is 1.
  ActiveDirectoryConnectorDNSDetails({
    this.domainName,
    required this.nameserverIPAddresses,
    this.preferK8sDnsForPtrLookups,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'nameserverIPAddresses': nameserverIPAddresses,
      'preferK8sDnsForPtrLookups': ?preferK8sDnsForPtrLookups,
      'replicas': ?replicas,
    };
  }

  factory ActiveDirectoryConnectorDNSDetails.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorDNSDetails(
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      nameserverIPAddresses: (map['nameserverIPAddresses'] as List).cast<String>(),
      preferK8sDnsForPtrLookups: map['preferK8sDnsForPtrLookups'] == null ? null : map['preferK8sDnsForPtrLookups'] as bool,
      replicas: map['replicas'] == null ? null : map['replicas'] as double,
    );
  }
}

