// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_dns_config_dns_record/get_service_dns_config_dns_record.dart';

class GetServiceDnsConfig {
  /// An array that contains one DnsRecord object for each resource record set. See `dns_records` Block for details.
  final List<GetServiceDnsConfigDnsRecord> dnsRecords;

  /// ID of the namespace that the service belongs to.
  final String namespaceId;

  /// Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
  final String routingPolicy;

  GetServiceDnsConfig({
    required this.dnsRecords,
    required this.namespaceId,
    required this.routingPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsRecords'] =
        Input.encodeList<GetServiceDnsConfigDnsRecord, Map<String, dynamic>>(
            dnsRecords, (value) => value.toMap());
    map['namespaceId'] = namespaceId;
    map['routingPolicy'] = routingPolicy;
    return map;
  }

  factory GetServiceDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceDnsConfig(
      dnsRecords: Input.decodeList<GetServiceDnsConfigDnsRecord>(
          map['dnsRecords'],
          (value) => GetServiceDnsConfigDnsRecord.fromMap(
              (value as Map).cast<String, dynamic>())),
      namespaceId: map['namespaceId'] as String,
      routingPolicy: map['routingPolicy'] as String,
    );
  }
}
