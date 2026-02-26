// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../dns_zone_peering_config/dns_zone_peering_config.dart';

/// The set of arguments for DnsZone.
class DnsZoneArgs {
  /// Description for the zone.
  final Input<String> description;

  /// ID of the dns zone.
  final Input<String> dnsZoneId;

  /// Doamin for the zone.
  final Input<String> domain;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// Peering zone config
  /// Structure is documented below.
  final Input<DnsZonePeeringConfig> peeringConfig;

  DnsZoneArgs({
    required this.description,
    required this.dnsZoneId,
    required this.domain,
    required this.orgId,
    required this.peeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['dnsZoneId'] = dnsZoneId;
    map['domain'] = domain;
    map['orgId'] = orgId;
    map['peeringConfig'] =
        Input.mapInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(
            peeringConfig, (value) => value.toMap());
    return map;
  }

  factory DnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneArgs(
      description: Input.asInput<String>(map['description']),
      dnsZoneId: Input.asInput<String>(map['dnsZoneId']),
      domain: Input.asInput<String>(map['domain']),
      orgId: Input.asInput<String>(map['orgId']),
      peeringConfig: Input.asInput<DnsZonePeeringConfig>(map['peeringConfig']),
    );
  }
}
