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
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final hostedZoneIdValue = hostedZoneId;
    if (hostedZoneIdValue != null) {
      map['hostedZoneId'] = hostedZoneIdValue;
    }
    return map;
  }

  factory ServiceNetworkServiceAssociationDnsEntry.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkServiceAssociationDnsEntry(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      hostedZoneId:
          map['hostedZoneId'] == null ? null : map['hostedZoneId'] as String,
    );
  }
}
