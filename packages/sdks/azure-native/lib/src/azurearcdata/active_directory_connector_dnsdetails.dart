// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS server details
class ActiveDirectoryConnectorDNSDetails {
  /// DNS domain name for which DNS lookups should be forwarded to the Active Directory DNS servers.
  final pulumi.Input<String>? domainName;

  /// List of Active Directory DNS server IP addresses.
  final pulumi.Input<List<String>> nameserverIPAddresses;

  /// Flag indicating whether to prefer Kubernetes DNS server response over AD DNS server response for IP address lookups.
  final pulumi.Input<bool>? preferK8sDnsForPtrLookups;

  /// Replica count for DNS proxy service. Default value is 1.
  final pulumi.Input<double>? replicas;

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
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameserverIPAddresses: pulumi.Input.fromValue(
        (map['nameserverIPAddresses'] as List).cast<String>(),
      ),
      preferK8sDnsForPtrLookups: (() {
        final guardedValue = map['preferK8sDnsForPtrLookups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replicas: (() {
        final guardedValue = map['replicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
