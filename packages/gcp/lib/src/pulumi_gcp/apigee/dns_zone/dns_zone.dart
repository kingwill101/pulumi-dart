import 'package:pulumi/pulumi.dart';
import '../dns_zone_peering_config/dns_zone_peering_config.dart';
import 'dns_zone_args.dart';

/// Apigee Dns Zone.
///
///
/// To get more information about DnsZone, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.dnsZones/create)
/// * How-to Guides
/// * [Creating a DnsZone](https://cloud.google.com/apigee/docs/api-platform/get-started/create-dns)
///
/// ## Example Usage
///
/// ### Apigee Dns Zone Basic
///
///
///
///
/// ## Import
///
/// DnsZone can be imported using any of these accepted formats:
///
/// * `{{org_id}}/dnsZones/{{dns_zone_id}}`
///
/// * `{{org_id}}/{{dns_zone_id}}`
///
/// When using the `pulumi import` command, DnsZone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/dnsZone:DnsZone default {{org_id}}/dnsZones/{{dns_zone_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/dnsZone:DnsZone default {{org_id}}/{{dns_zone_id}}
/// ```
class DnsZone extends CustomResource {
  /// Description for the zone.
  late final Output<String> description;

  /// ID of the dns zone.
  late final Output<String> dnsZoneId;

  /// Doamin for the zone.
  late final Output<String> domain;

  /// Name of the Dns Zone in the following format:
  /// organizations/{organization}/dnsZones/{dnsZone}.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// Peering zone config
  /// Structure is documented below.
  late final Output<DnsZonePeeringConfig> peeringConfig;

  DnsZone(
    String name, {
    DnsZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/dnsZone:DnsZone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.dnsZoneId = registerOutput<String>('dnsZoneId');
    this.domain = registerOutput<String>('domain');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.peeringConfig = registerOutput<DnsZonePeeringConfig>('peeringConfig');
  }
}
