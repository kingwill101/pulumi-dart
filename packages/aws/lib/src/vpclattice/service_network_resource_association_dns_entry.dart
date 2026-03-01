// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkResourceAssociationDnsEntry {
  /// The domain name of the association in the service network.
  final String domainName;

  /// The ID of the hosted zone containing the domain name.
  final String hostedZoneId;

  /// Creates a new [ServiceNetworkResourceAssociationDnsEntry].
  /// [domainName] The domain name of the association in the service network.
  /// [hostedZoneId] The ID of the hosted zone containing the domain name.
  ServiceNetworkResourceAssociationDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory ServiceNetworkResourceAssociationDnsEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceNetworkResourceAssociationDnsEntry(
      domainName: map['domainName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
