// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkServiceAssociationDnsEntry {
  /// The domain name of the service.
  final String? domainName;

  /// The ID of the hosted zone.
  final String? hostedZoneId;

  /// Creates a new [ServiceNetworkServiceAssociationDnsEntry].
  /// [domainName] The domain name of the service.
  /// [hostedZoneId] The ID of the hosted zone.
  ServiceNetworkServiceAssociationDnsEntry({
    this.domainName,
    this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'hostedZoneId': ?hostedZoneId,
    };
  }

  factory ServiceNetworkServiceAssociationDnsEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceNetworkServiceAssociationDnsEntry(
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      hostedZoneId: map['hostedZoneId'] == null
          ? null
          : map['hostedZoneId'] as String,
    );
  }
}
