// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDnsConfigDnsRecord {
  /// The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  final pulumi.Input<int> ttl;
  /// The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
  final pulumi.Input<String> type;

  /// Creates a new [ServiceDnsConfigDnsRecord].
  /// [ttl] The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
  /// [type] The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
  const ServiceDnsConfigDnsRecord({
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttl': ttl,
      'type': type,
    };
  }

  factory ServiceDnsConfigDnsRecord.fromMap(Map<String, dynamic> map) {
    return ServiceDnsConfigDnsRecord(
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
