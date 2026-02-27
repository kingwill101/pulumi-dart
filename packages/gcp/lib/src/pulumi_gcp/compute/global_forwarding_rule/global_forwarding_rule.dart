import 'package:pulumi/pulumi.dart' as pulumi;
import '../global_forwarding_rule_metadata_filter/global_forwarding_rule_metadata_filter.dart';
import '../global_forwarding_rule_service_directory_registrations/global_forwarding_rule_service_directory_registrations.dart';
import 'global_forwarding_rule_args.dart';

/// Represents a GlobalForwardingRule resource. Global forwarding rules are
/// used to forward traffic to the correct load balancer for HTTP load
/// balancing. Global forwarding rules can only be used for HTTP load
/// balancing.
///
/// For more information, see https://cloud.google.com/compute/docs/load-balancing/http/
///
///
///
/// ## Example Usage
///
/// ### Global Forwarding Rule Http
///
///
///
/// ### Global Forwarding Rule Internal
///
///
///
/// ### Global Forwarding Rule External Managed
///
///
///
/// ### Global Forwarding Rule Hybrid
///
///
///
/// ### Private Service Connect Google Apis
///
///
///
/// ### Private Service Connect Google Apis No Automate Dns
///
///
///
///
/// ## Import
///
/// GlobalForwardingRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/forwardingRules/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GlobalForwardingRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default projects/{{project}}/global/forwardingRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalForwardingRule:GlobalForwardingRule default {{name}}
/// ```
class GlobalForwardingRule extends pulumi.CustomResource {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  late final pulumi.Output<bool?> allowPscGlobalAccess;

  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  late final pulumi.Output<String> baseForwardingRule;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Specifies the canary migration state for the backend buckets attached to this forwarding rule.
  /// Possible values are PREPARE, TEST_BY_PERCENTAGE, and TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic to backend buckets attached to this forwarding rule by percentage using
  /// externalManagedBackendBucketMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  late final pulumi.Output<String?> externalManagedBackendBucketMigrationState;

  /// Determines the fraction of requests to backend buckets that should be processed by the Global
  /// external Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// This value can only be set if the loadBalancingScheme in the forwarding rule is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  late final pulumi.Output<double?>
      externalManagedBackendBucketMigrationTestingPercentage;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> forwardingRuleId;

  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced `target`.
  /// While creating a forwarding rule, specifying an `IPAddress` is
  /// required under the following circumstances:
  /// * When the `target` is set to `targetGrpcProxy` and
  /// `validateForProxyless` is set to `true`, the
  /// `IPAddress` should be set to `0.0.0.0`.
  /// * When the `target` is a Private Service Connect Google APIs
  /// bundle, you must specify an `IPAddress`.
  /// Otherwise, you can optionally specify an IP address that references an
  /// existing static (reserved) IP address resource. When omitted, Google Cloud
  /// assigns an ephemeral IP address.
  /// Use one of the following formats to specify an IP address while creating a
  /// forwarding rule:
  /// * IP address number, as in `100.1.2.3`
  /// * IPv6 address range, as in `2600:1234::/96`
  /// * Full resource URL, as in
  /// `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name`
  /// * Partial URL or by name, as in:
  /// * `projects/project_id/regions/region/addresses/address-name`
  /// * `regions/region/addresses/address-name`
  /// * `global/addresses/address-name`
  /// * `address-name`
  /// The forwarding rule's `target`,
  /// and in most cases, also the `loadBalancingScheme`, determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// When reading an `IPAddress`, the API always returns the IP
  /// address number.
  late final pulumi.Output<String> ipAddress;

  /// The IP protocol to which this rule applies.
  /// For protocol forwarding, valid
  /// options are `TCP`, `UDP`, `ESP`,
  /// `AH`, `SCTP`, `ICMP` and
  /// `L3_DEFAULT`.
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// Possible values are: `TCP`, `UDP`, `ESP`, `AH`, `SCTP`, `ICMP`.
  late final pulumi.Output<String> ipProtocol;

  /// The IP Version that will be used by this global forwarding rule.
  /// Possible values are: `IPV4`, `IPV6`.
  late final pulumi.Output<String?> ipVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this forwarding rule.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Specifies the forwarding rule type.
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`, `INTERNAL_SELF_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;

  /// Opaque filter criteria used by Loadbalancer to restrict routing
  /// configuration to a limited set xDS compliant clients. In their xDS
  /// requests to Loadbalancer, xDS clients present node metadata. If a
  /// match takes place, the relevant routing configuration is made available
  /// to those proxies.
  /// For each metadataFilter in this list, if its filterMatchCriteria is set
  /// to MATCH_ANY, at least one of the filterLabels must match the
  /// corresponding label provided in the metadata. If its filterMatchCriteria
  /// is set to MATCH_ALL, then all of its filterLabels must match with
  /// corresponding labels in the provided metadata.
  /// metadataFilters specified here can be overridden by those specified in
  /// the UrlMap that this ForwardingRule references.
  /// metadataFilters only applies to Loadbalancers that have their
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final pulumi.Output<List<GlobalForwardingRuleMetadataFilter>?>
      metadataFilters;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, the forwarding rule name must be a 1-20 characters string with
  /// lowercase letters and numbers and must start with a letter.
  late final pulumi.Output<String> name;

  /// This field is not used for external load balancing.
  /// For Internal TCP/UDP Load Balancing, this field identifies the network that
  /// the load balanced IP should belong to for this Forwarding Rule.
  /// If the subnetwork is specified, the network of the subnetwork will be used.
  /// If neither subnetwork nor this field is specified, the default network will
  /// be used.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, a network must be provided.
  late final pulumi.Output<String> network;

  /// This signifies the networking tier used for configuring
  /// this load balancer and can only take the following values:
  /// `PREMIUM`, `STANDARD`.
  /// For regional ForwardingRule, the valid values are `PREMIUM` and
  /// `STANDARD`. For GlobalForwardingRule, the valid value is
  /// `PREMIUM`.
  /// If this field is not specified, it is assumed to be `PREMIUM`.
  /// If `IPAddress` is specified, this value must be equal to the
  /// networkTier of the Address.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final pulumi.Output<String> networkTier;

  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  late final pulumi.Output<bool?> noAutomateDnsZone;

  /// The `portRange` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: external passthrough
  /// Network Load Balancers, internal and external proxy Network Load
  /// Balancers, internal and external Application Load Balancers, external
  /// protocol forwarding, and Classic VPN.
  /// * Some products have restrictions on what ports can be used. See
  /// [port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
  /// for details.
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same `[IPAddress, IPProtocol]` pair, and cannot have overlapping
  /// `portRange`s.
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same `[IPAddress, IPProtocol]` pair, and
  /// cannot have overlapping `portRange`s.
  /// @pattern: \d+(?:-\d+)?
  late final pulumi.Output<String?> portRange;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The PSC connection id of the PSC Forwarding Rule.
  late final pulumi.Output<String> pscConnectionId;

  /// The PSC connection status of the PSC Forwarding Rule. Possible values: `STATUS_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`
  late final pulumi.Output<String> pscConnectionStatus;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Service Directory resources to register this forwarding rule with.
  /// Currently, only supports a single Service Directory resource.
  /// Structure is documented below.
  late final pulumi.Output<GlobalForwardingRuleServiceDirectoryRegistrations>
      serviceDirectoryRegistrations;

  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  late final pulumi.Output<List<String>?> sourceIpRanges;

  /// This field identifies the subnetwork that the load balanced IP should
  /// belong to for this Forwarding Rule, used in internal load balancing and
  /// network load balancing with IPv6.
  /// If the network specified is in auto subnet mode, this field is optional.
  /// However, a subnetwork must be specified if the network is in custom subnet
  /// mode or when creating external forwarding rule with IPv6.
  late final pulumi.Output<String> subnetwork;

  /// The URL of the target resource to receive the matched traffic.  For
  /// regional forwarding rules, this target must be in the same region as the
  /// forwarding rule. For global forwarding rules, this target must be a global
  /// load balancing resource.
  /// The forwarded traffic must be of a type appropriate to the target object.
  /// *  For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// *  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  /// *  `vpc-sc` - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  /// *  `all-apis` - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  late final pulumi.Output<String> target;

  GlobalForwardingRule(
    String name, {
    GlobalForwardingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalForwardingRule:GlobalForwardingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowPscGlobalAccess = registerOutput<bool?>('allowPscGlobalAccess');
    this.baseForwardingRule = registerOutput<String>('baseForwardingRule');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.externalManagedBackendBucketMigrationState =
        registerOutput<String?>('externalManagedBackendBucketMigrationState');
    this.externalManagedBackendBucketMigrationTestingPercentage =
        registerOutput<double?>(
            'externalManagedBackendBucketMigrationTestingPercentage');
    this.forwardingRuleId = registerOutput<int>('forwardingRuleId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.metadataFilters =
        registerOutput<List<GlobalForwardingRuleMetadataFilter>?>(
            'metadataFilters');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkTier = registerOutput<String>('networkTier');
    this.noAutomateDnsZone = registerOutput<bool?>('noAutomateDnsZone');
    this.portRange = registerOutput<String?>('portRange');
    this.project = registerOutput<String>('project');
    this.pscConnectionId = registerOutput<String>('pscConnectionId');
    this.pscConnectionStatus = registerOutput<String>('pscConnectionStatus');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceDirectoryRegistrations =
        registerOutput<GlobalForwardingRuleServiceDirectoryRegistrations>(
            'serviceDirectoryRegistrations');
    this.sourceIpRanges = registerOutput<List<String>?>('sourceIpRanges');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.target = registerOutput<String>('target');
  }
}
