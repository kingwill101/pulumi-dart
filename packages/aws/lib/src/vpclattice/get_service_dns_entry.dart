// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDnsEntry {
  /// DNS name for the service.
  final String domainName;

  /// Hosted zone ID where the DNS name is registered.
  final String hostedZoneId;

  /// Creates a new [GetServiceDnsEntry].
  /// [domainName] DNS name for the service.
  /// [hostedZoneId] Hosted zone ID where the DNS name is registered.
  GetServiceDnsEntry({required this.domainName, required this.hostedZoneId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetServiceDnsEntry.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsEntry(
      domainName: map['domainName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
