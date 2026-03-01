// ignore_for_file: unused_element, unnecessary_cast

class ServiceDnsConfigDnsRecord {
  /// The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  final int ttl;

  /// The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
  final String type;

  /// Creates a new [ServiceDnsConfigDnsRecord].
  /// [ttl] The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  /// [type] The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
  ServiceDnsConfigDnsRecord({required this.ttl, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ttl': ttl, 'type': type};
  }

  factory ServiceDnsConfigDnsRecord.fromMap(Map<String, dynamic> map) {
    return ServiceDnsConfigDnsRecord(
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}
