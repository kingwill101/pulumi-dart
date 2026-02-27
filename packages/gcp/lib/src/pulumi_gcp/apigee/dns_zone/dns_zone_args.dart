// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dns_zone_peering_config/dns_zone_peering_config.dart';

/// The set of arguments for DnsZone.
class DnsZoneArgs {
  /// Description for the zone.
  final pulumi.Input<String> description;

  /// ID of the dns zone.
  final pulumi.Input<String> dnsZoneId;

  /// Doamin for the zone.
  final pulumi.Input<String> domain;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Peering zone config
  /// Structure is documented below.
  final pulumi.Input<DnsZonePeeringConfig> peeringConfig;

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
        pulumi.Input.mapInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(
            peeringConfig, (value) => value.toMap());
    return map;
  }

  factory DnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneArgs(
      description: pulumi.Input.asInput<String>(map['description']),
      dnsZoneId: pulumi.Input.asInput<String>(map['dnsZoneId']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      peeringConfig:
          pulumi.Input.asInput<DnsZonePeeringConfig>(map['peeringConfig']),
    );
  }
}
