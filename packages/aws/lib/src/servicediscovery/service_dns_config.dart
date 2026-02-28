// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_dns_config_dns_record.dart';

class ServiceDnsConfig {
  /// An array that contains one DnsRecord object for each resource record set. See `dns_records` Block for details.
  final List<ServiceDnsConfigDnsRecord> dnsRecords;

  /// The ID of the namespace to use for DNS configuration.
  final String namespaceId;

  /// The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  final String? routingPolicy;

  /// Creates a new [ServiceDnsConfig].
  /// [dnsRecords] An array that contains one DnsRecord object for each resource record set. See `dns_records` Block for details.
  /// [namespaceId] The ID of the namespace to use for DNS configuration.
  /// [routingPolicy] The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  ServiceDnsConfig({
    required this.dnsRecords,
    required this.namespaceId,
    this.routingPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsRecords'] = pulumi.Input.encodeList<ServiceDnsConfigDnsRecord,
        Map<String, dynamic>>(dnsRecords, (value) => value.toMap());
    map['namespaceId'] = namespaceId;
    final routingPolicyValue = routingPolicy;
    if (routingPolicyValue != null) {
      map['routingPolicy'] = routingPolicyValue;
    }
    return map;
  }

  factory ServiceDnsConfig.fromMap(Map<String, dynamic> map) {
    return ServiceDnsConfig(
      dnsRecords: pulumi.Input.decodeList<ServiceDnsConfigDnsRecord>(
          map['dnsRecords'],
          (value) => ServiceDnsConfigDnsRecord.fromMap(
              (value as Map).cast<String, dynamic>())),
      namespaceId: map['namespaceId'] as String,
      routingPolicy:
          map['routingPolicy'] == null ? null : map['routingPolicy'] as String,
    );
  }
}
