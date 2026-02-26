// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkResourceAssociationDnsEntry {
  /// The domain name of the association in the service network.
  final String domainName;

  /// The ID of the hosted zone containing the domain name.
  final String hostedZoneId;

  ServiceNetworkResourceAssociationDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['hostedZoneId'] = hostedZoneId;
    return map;
  }

  factory ServiceNetworkResourceAssociationDnsEntry.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationDnsEntry(
      domainName: map['domainName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
