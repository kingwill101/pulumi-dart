// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_peering_config.dart';

/// {@template pulumi_apigee_dns_zone_dns_zone_args_doc}
/// The set of arguments for DnsZone.
/// {@endtemplate}
/// {@macro pulumi_apigee_dns_zone_dns_zone_args_doc}
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

  /// Creates a new [DnsZoneArgs].
  /// [description] Description for the zone.
  /// [dnsZoneId] ID of the dns zone.
  /// [domain] Doamin for the zone.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringConfig] Peering zone config
  DnsZoneArgs({
    required String description,
    required String dnsZoneId,
    required String domain,
    required String orgId,
    required DnsZonePeeringConfig peeringConfig,
  }) :
      description = pulumi.Input.asInput<String>(description),
      dnsZoneId = pulumi.Input.asInput<String>(dnsZoneId),
      domain = pulumi.Input.asInput<String>(domain),
      orgId = pulumi.Input.asInput<String>(orgId),
      peeringConfig = pulumi.Input.asInput<DnsZonePeeringConfig>(peeringConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsZoneId': dnsZoneId,
      'domain': domain,
      'orgId': orgId,
      'peeringConfig': pulumi.Input.mapInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
    };
  }

  factory DnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneArgs(
      description: map['description'] as String,
      dnsZoneId: map['dnsZoneId'] as String,
      domain: map['domain'] as String,
      orgId: map['orgId'] as String,
      peeringConfig: DnsZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

