// ignore_for_file: unused_element, unnecessary_cast


class GetServiceDnsConfigDnsRecord {
  /// Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  final int ttl;
  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final String type;

  /// Creates a new [GetServiceDnsConfigDnsRecord].
  /// [ttl] Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  /// [type] The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  GetServiceDnsConfigDnsRecord({
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetServiceDnsConfigDnsRecord.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsConfigDnsRecord(
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}

