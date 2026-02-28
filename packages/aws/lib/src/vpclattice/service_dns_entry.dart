// ignore_for_file: unused_element, unnecessary_cast

class ServiceDnsEntry {
  final String? domainName;
  final String? hostedZoneId;

  /// Creates a new [ServiceDnsEntry].
  /// [domainName] Optional.
  /// [hostedZoneId] Optional.
  ServiceDnsEntry({
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

  factory ServiceDnsEntry.fromMap(Map<String, dynamic> map) {
    return ServiceDnsEntry(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      hostedZoneId:
          map['hostedZoneId'] == null ? null : map['hostedZoneId'] as String,
    );
  }
}
