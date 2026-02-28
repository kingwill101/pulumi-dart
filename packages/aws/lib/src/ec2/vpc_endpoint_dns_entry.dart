// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointDnsEntry {
  /// The DNS name.
  final String? dnsName;

  /// The ID of the private hosted zone.
  final String? hostedZoneId;

  /// Creates a new [VpcEndpointDnsEntry].
  /// [dnsName] The DNS name.
  /// [hostedZoneId] The ID of the private hosted zone.
  VpcEndpointDnsEntry({
    this.dnsName,
    this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final hostedZoneIdValue = hostedZoneId;
    if (hostedZoneIdValue != null) {
      map['hostedZoneId'] = hostedZoneIdValue;
    }
    return map;
  }

  factory VpcEndpointDnsEntry.fromMap(Map<String, dynamic> map) {
    return VpcEndpointDnsEntry(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      hostedZoneId:
          map['hostedZoneId'] == null ? null : map['hostedZoneId'] as String,
    );
  }
}
