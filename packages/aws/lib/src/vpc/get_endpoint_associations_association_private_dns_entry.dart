// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointAssociationsAssociationPrivateDnsEntry {
  /// DNS name.
  final String dnsName;

  /// ID of the private hosted zone.
  final String hostedZoneId;

  /// Creates a new [GetEndpointAssociationsAssociationPrivateDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetEndpointAssociationsAssociationPrivateDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['hostedZoneId'] = hostedZoneId;
    return map;
  }

  factory GetEndpointAssociationsAssociationPrivateDnsEntry.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointAssociationsAssociationPrivateDnsEntry(
      dnsName: map['dnsName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
