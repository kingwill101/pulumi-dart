// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDnsConfigDnsRecord {
  /// Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  final pulumi.Input<int> ttl;
  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final pulumi.Input<String> type;

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
      ttl: (map['ttl'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

