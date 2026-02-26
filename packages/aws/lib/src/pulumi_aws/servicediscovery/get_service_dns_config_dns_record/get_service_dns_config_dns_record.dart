// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDnsConfigDnsRecord {
  /// Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  final int ttl;

  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final String type;

  GetServiceDnsConfigDnsRecord({
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ttl'] = ttl;
    map['type'] = type;
    return map;
  }

  factory GetServiceDnsConfigDnsRecord.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsConfigDnsRecord(
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}
