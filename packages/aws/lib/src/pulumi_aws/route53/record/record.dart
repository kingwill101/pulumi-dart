import 'package:pulumi/pulumi.dart' as pulumi;
import '../record_alias/record_alias.dart';
import '../record_cidr_routing_policy/record_cidr_routing_policy.dart';
import '../record_failover_routing_policy/record_failover_routing_policy.dart';
import '../record_geolocation_routing_policy/record_geolocation_routing_policy.dart';
import '../record_geoproximity_routing_policy/record_geoproximity_routing_policy.dart';
import '../record_latency_routing_policy/record_latency_routing_policy.dart';
import '../record_weighted_routing_policy/record_weighted_routing_policy.dart';
import 'record_args.dart';

/// Provides a Route53 record resource.
///
/// ## Example Usage
///
/// ### Simple routing policy
///
///
///
/// ### Weighted routing policy
///
/// Other routing policies are configured similarly. See [Amazon Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html) for details.
///
///
///
/// ### Geoproximity routing policy
///
///
///
/// ### Alias record
///
/// See [related part of Amazon Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html)
/// to understand differences between alias and non-alias records.
///
/// TTL for all alias records is [60 seconds](https://aws.amazon.com/route53/faqs/#dns_failover_do_i_need_to_adjust),
/// you cannot change this, therefore `ttl` has to be omitted in alias records.
///
///
///
/// ### Alias record for AWS Global Accelerator
///
///
///
/// ### NS and SOA Record Management
///
/// When creating Route 53 zones, the `NS` and `SOA` records for the zone are automatically created. Enabling the `allow_overwrite` argument will allow managing these records in a single deployment without the requirement for `import`.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `zone_id` (String) Hosted zone ID for the record.
/// * `name` (String) Name of the record.
/// * `type` (String) Record type.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `set_identifier` (String) Set identifier for the record.
///
///
/// If the record also contains a set identifier, append it:
///
///
/// If the record name is the empty string, it can be omitted:
///
///
/// **Using `pulumi import` to import** Route53 Records using the hosted zone ID, record name, record type, and set identifier. For example:
///
/// Using the hosted zone ID, record name, and record type, separated by underscores (`_`):
///
/// ```sh
/// $ pulumi import aws:route53/record:Record example Z4KAPRWWNC7JR_dev_NS
/// ```
///
/// If the record also contains a set identifier, append it:
///
/// ```sh
/// $ pulumi import aws:route53/record:Record example Z4KAPRWWNC7JR_dev_NS_dev
/// ```
class Record extends pulumi.CustomResource {
  /// An alias block. Conflicts with `ttl` & `records`.
  /// Documented below.
  late final pulumi.Output<List<RecordAlias>?> aliases;

  /// Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. `false` by default. This configuration is not recommended for most environments.
  ///
  /// Exactly one of `records` or `alias` must be specified: this determines whether it's an alias record.
  late final pulumi.Output<bool> allowOverwrite;

  /// A block indicating a routing policy based on the IP network ranges of requestors. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<RecordCidrRoutingPolicy?> cidrRoutingPolicy;

  /// A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordFailoverRoutingPolicy>?>
      failoverRoutingPolicies;

  /// [FQDN](https://en.wikipedia.org/wiki/Fully_qualified_domain_name) built using the zone domain and `name`.
  late final pulumi.Output<String> fqdn;

  /// A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordGeolocationRoutingPolicy>?>
      geolocationRoutingPolicies;

  /// A block indicating a routing policy based on the geoproximity of the requestor. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<RecordGeoproximityRoutingPolicy?>
      geoproximityRoutingPolicy;

  /// The health check the record should be associated with.
  late final pulumi.Output<String?> healthCheckId;

  /// A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordLatencyRoutingPolicy>?>
      latencyRoutingPolicies;

  /// Set to `true` to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  late final pulumi.Output<bool?> multivalueAnswerRoutingPolicy;

  /// The name of the record.
  late final pulumi.Output<String> name;

  /// A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  late final pulumi.Output<List<String>?> records;

  /// Unique identifier to differentiate records with routing policies from one another. Required if using `cidr_routing_policy`, `failover_routing_policy`, `geolocation_routing_policy`,`geoproximity_routing_policy`, `latency_routing_policy`, `multivalue_answer_routing_policy`, or `weighted_routing_policy`.
  late final pulumi.Output<String?> setIdentifier;

  /// The TTL of the record.
  late final pulumi.Output<int?> ttl;

  /// The record type. Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `HTTPS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, and `TXT`.
  late final pulumi.Output<String> type;

  /// A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordWeightedRoutingPolicy>?>
      weightedRoutingPolicies;

  /// The ID of the hosted zone to contain this record.
  late final pulumi.Output<String> zoneId;

  Record(
    String name, {
    RecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/record:Record',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<RecordAlias>?>('aliases');
    this.allowOverwrite = registerOutput<bool>('allowOverwrite');
    this.cidrRoutingPolicy =
        registerOutput<RecordCidrRoutingPolicy?>('cidrRoutingPolicy');
    this.failoverRoutingPolicies =
        registerOutput<List<RecordFailoverRoutingPolicy>?>(
            'failoverRoutingPolicies');
    this.fqdn = registerOutput<String>('fqdn');
    this.geolocationRoutingPolicies =
        registerOutput<List<RecordGeolocationRoutingPolicy>?>(
            'geolocationRoutingPolicies');
    this.geoproximityRoutingPolicy =
        registerOutput<RecordGeoproximityRoutingPolicy?>(
            'geoproximityRoutingPolicy');
    this.healthCheckId = registerOutput<String?>('healthCheckId');
    this.latencyRoutingPolicies =
        registerOutput<List<RecordLatencyRoutingPolicy>?>(
            'latencyRoutingPolicies');
    this.multivalueAnswerRoutingPolicy =
        registerOutput<bool?>('multivalueAnswerRoutingPolicy');
    this.name = registerOutput<String>('name');
    this.records = registerOutput<List<String>?>('records');
    this.setIdentifier = registerOutput<String?>('setIdentifier');
    this.ttl = registerOutput<int?>('ttl');
    this.type = registerOutput<String>('type');
    this.weightedRoutingPolicies =
        registerOutput<List<RecordWeightedRoutingPolicy>?>(
            'weightedRoutingPolicies');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
