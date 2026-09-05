// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_dns_config_dns_record.dart';

class ServiceDnsConfig {
  /// An array that contains one DnsRecord object for each resource record set. See `dnsRecords` Block for details.
  final pulumi.Input<List<ServiceDnsConfigDnsRecord>> dnsRecords;
  /// The ID of the namespace to use for DNS configuration.
  final pulumi.Input<String> namespaceId;
  /// The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  final pulumi.Input<String?>? routingPolicy;

  /// Creates a new [ServiceDnsConfig].
  /// [dnsRecords] An array that contains one DnsRecord object for each resource record set. See `dnsRecords` Block for details.
  /// [namespaceId] The ID of the namespace to use for DNS configuration.
  /// [routingPolicy] The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  const ServiceDnsConfig({
    required this.dnsRecords,
    required this.namespaceId,
    this.routingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecords': pulumi.Input.mapInputValue<List<ServiceDnsConfigDnsRecord>, List<Map<String, dynamic>>>(dnsRecords, (value) => pulumi.Input.encodeList<ServiceDnsConfigDnsRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespaceId': namespaceId,
      'routingPolicy': ?routingPolicy,
    };
  }

  factory ServiceDnsConfig.fromMap(Map<String, dynamic> map) {
    return ServiceDnsConfig(
      dnsRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceDnsConfigDnsRecord>(map['dnsRecords']!, (value) => ServiceDnsConfigDnsRecord.fromMap((value as Map).cast<String, dynamic>()))),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      routingPolicy: (() { final guardedValue = map['routingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
