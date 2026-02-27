import 'package:pulumi/pulumi.dart' as pulumi;
import '../zone_vpc/zone_vpc.dart';
import 'zone_args.dart';

/// Manages a Route53 Hosted Zone. For managing Domain Name System Security Extensions (DNSSEC), see the `aws.route53.KeySigningKey` and `aws.route53.HostedZoneDnsSec` resources.
///
/// ## Example Usage
///
/// ### Public Zone
///
///
///
/// ### Public Subdomain Zone
///
/// For use in subdomains, note that you need to create a
/// `aws.route53.Record` of type `NS` as well as the subdomain
/// zone.
///
///
///
/// ### Private Zone
///
/// > **NOTE:** This provider provides both exclusive VPC associations defined in-line in this resource via `vpc` configuration blocks and a separate `Zone VPC Association resource. At this time, you cannot use in-line VPC associations in conjunction with any `aws.route53.ZoneAssociation` resources with the same zone ID otherwise it will cause a perpetual difference in plan output. You can optionally use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to manage additional associations via the `aws.route53.ZoneAssociation` resource.
///
/// > **NOTE:** Private zones require at least one VPC association at all times.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Zones using the zone `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/zone:Zone myzone Z1D633PJN98FT9
/// ```
class Zone extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Hosted Zone.
  late final pulumi.Output<String> arn;

  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  late final pulumi.Output<String> comment;

  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  late final pulumi.Output<String?> delegationSetId;

  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  late final pulumi.Output<bool> enableAcceleratedRecovery;

  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  late final pulumi.Output<bool?> forceDestroy;

  /// This is the name of the hosted zone.
  late final pulumi.Output<String> name;

  /// A list of name servers in associated (or default) delegation set.
  /// Find more about delegation sets in [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/actions-on-reusable-delegation-sets.html).
  late final pulumi.Output<List<String>> nameServers;

  /// The Route 53 name server that created the SOA record.
  late final pulumi.Output<String> primaryNameServer;

  /// A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  late final pulumi.Output<List<ZoneVpc>?> vpcs;

  /// The Hosted Zone ID. This can be referenced by zone records.
  late final pulumi.Output<String> zoneId;

  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String>('comment');
    this.delegationSetId = registerOutput<String?>('delegationSetId');
    this.enableAcceleratedRecovery =
        registerOutput<bool>('enableAcceleratedRecovery');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.primaryNameServer = registerOutput<String>('primaryNameServer');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcs = registerOutput<List<ZoneVpc>?>('vpcs');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
