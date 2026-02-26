// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDnsEntry {
  /// DNS name for the service.
  final String domainName;

  /// Hosted zone ID where the DNS name is registered.
  final String hostedZoneId;

  GetServiceDnsEntry({
    required this.domainName,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['hostedZoneId'] = hostedZoneId;
    return map;
  }

  factory GetServiceDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsEntry(
      domainName: map['domainName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
