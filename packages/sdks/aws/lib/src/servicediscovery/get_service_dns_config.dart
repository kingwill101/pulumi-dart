// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_dns_config_dns_record.dart';

class GetServiceDnsConfig {
  /// An array that contains one DnsRecord object for each resource record set. See `dns_records` Block for details.
  final pulumi.Input<List<GetServiceDnsConfigDnsRecord>> dnsRecords;
  /// ID of the namespace that the service belongs to.
  final pulumi.Input<String> namespaceId;
  /// Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  final pulumi.Input<String> routingPolicy;

  /// Creates a new [GetServiceDnsConfig].
  /// [dnsRecords] An array that contains one DnsRecord object for each resource record set. See `dns_records` Block for details.
  /// [namespaceId] ID of the namespace that the service belongs to.
  /// [routingPolicy] Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  const GetServiceDnsConfig({
    required this.dnsRecords,
    required this.namespaceId,
    required this.routingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecords': pulumi.Input.mapInputValue<List<GetServiceDnsConfigDnsRecord>, List<Map<String, dynamic>>>(dnsRecords, (value) => pulumi.Input.encodeList<GetServiceDnsConfigDnsRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespaceId': namespaceId,
      'routingPolicy': routingPolicy,
    };
  }

  factory GetServiceDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsConfig(
      dnsRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDnsConfigDnsRecord>(map['dnsRecords']!, (value) => GetServiceDnsConfigDnsRecord.fromMap((value as Map).cast<String, dynamic>()))),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      routingPolicy: pulumi.Input.fromValue(map['routingPolicy'] as String),
    );
  }
}

