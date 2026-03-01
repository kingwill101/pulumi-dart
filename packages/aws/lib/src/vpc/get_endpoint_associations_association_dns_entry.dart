// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointAssociationsAssociationDnsEntry {
  /// DNS name.
  final String dnsName;

  /// ID of the private hosted zone.
  final String hostedZoneId;

  /// Creates a new [GetEndpointAssociationsAssociationDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetEndpointAssociationsAssociationDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'hostedZoneId': hostedZoneId};
  }

  factory GetEndpointAssociationsAssociationDnsEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEndpointAssociationsAssociationDnsEntry(
      dnsName: map['dnsName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
