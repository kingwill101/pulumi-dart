// ignore_for_file: unused_element, unnecessary_cast

class GetVpcEndpointDnsEntry {
  /// DNS name.
  final String dnsName;

  /// ID of the private hosted zone.
  final String hostedZoneId;

  /// Creates a new [GetVpcEndpointDnsEntry].
  /// [dnsName] DNS name.
  /// [hostedZoneId] ID of the private hosted zone.
  GetVpcEndpointDnsEntry({
    required this.dnsName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['hostedZoneId'] = hostedZoneId;
    return map;
  }

  factory GetVpcEndpointDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointDnsEntry(
      dnsName: map['dnsName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
