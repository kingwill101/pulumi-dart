import 'package:pulumi/pulumi.dart' as pulumi;
import '../forwarding_rule_service_directory_registrations/forwarding_rule_service_directory_registrations.dart';
import 'forwarding_rule_args.dart';

/// A ForwardingRule resource. A ForwardingRule resource specifies which pool
/// of target virtual machines to forward a packet to if it matches the given
/// [IPAddress, IPProtocol, portRange] tuple.
///
///
/// To get more information about ForwardingRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/forwardingRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/network/forwarding-rules)
///
/// ## Example Usage
///
/// ### Forwarding Rule Externallb
///
///
///
/// ### Forwarding Rule Global Internallb
///
///
///
/// ### Forwarding Rule Basic
///
///
///
/// ### Forwarding Rule L3 Default
///
///
///
/// ### Forwarding Rule Internallb
///
///
///
/// ### Forwarding Rule Http Lb
///
///
///
/// ### Forwarding Rule Regional Http Xlb
///
///
///
/// ### Forwarding Rule Vpc Psc
///
///
///
/// ### Forwarding Rule Vpc Psc No Automate Dns
///
///
///
/// ### Forwarding Rule Regional Steering
///
///
///
/// ### Forwarding Rule Internallb Ipv6
///
///
///
///
/// ## Import
///
/// ForwardingRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/forwardingRules/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ForwardingRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default projects/{{project}}/regions/{{region}}/forwardingRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/forwardingRule:ForwardingRule default {{name}}
/// ```
class ForwardingRule extends pulumi.CustomResource {
  /// The `ports`, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  /// The `allPorts` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, SCTP, or
  /// L3_DEFAULT.
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal and external protocol forwarding.
  /// * Set this field to true to allow packets addressed to any port or packets
  /// lacking destination port information (for example, UDP fragments after the
  /// first fragment) to be forwarded to the backends configured with this
  /// forwarding rule. The L3_DEFAULT protocol requires `allPorts` be set to
  /// true.
  late final pulumi.Output<bool?> allPorts;

  /// This field is used along with the `backend_service` field for
  /// internal load balancing or with the `target` field for internal
  /// TargetInstance.
  /// If the field is set to `TRUE`, clients can access ILB from all
  /// regions.
  /// Otherwise only allows access from clients in the same region as the
  /// internal load balancer.
  late final pulumi.Output<bool?> allowGlobalAccess;

  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  late final pulumi.Output<bool?> allowPscGlobalAccess;

  /// Identifies the backend service to which the forwarding rule sends traffic.
  /// Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
  /// must be omitted for all other load balancer types.
  late final pulumi.Output<String?> backendService;

  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  late final pulumi.Output<String> baseForwardingRule;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> forwardingRuleId;

  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced `target` or `backendService`.
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
  /// The forwarding rule's `target` or `backendService`,
  /// and in most cases, also the `loadBalancingScheme`, determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// When reading an `IPAddress`, the API always returns the IP
  /// address number.
  late final pulumi.Output<String> ipAddress;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_FORWARDING_RULE_CREATION mode.
  /// Use one of the following formats to specify a sub-PDP when creating an
  /// IPv6 NetLB forwarding rule using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  late final pulumi.Output<String?> ipCollection;

  /// The IP protocol to which this rule applies.
  /// For protocol forwarding, valid
  /// options are `TCP`, `UDP`, `ESP`,
  /// `AH`, `SCTP`, `ICMP` and
  /// `L3_DEFAULT`.
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
  /// backend service with UNSPECIFIED protocol.
  /// A forwarding rule with "L3_DEFAULT" IPProtocal cannot be attached to a backend service with TCP or UDP.
  /// Possible values are: `TCP`, `UDP`, `ESP`, `AH`, `SCTP`, `ICMP`, `L3_DEFAULT`.
  late final pulumi.Output<String> ipProtocol;

  /// The IP address version that will be used by this forwarding rule.
  /// Valid options are IPV4 and IPV6.
  /// If not set, the IPv4 address will be used by default.
  /// Possible values are: `IPV4`, `IPV6`.
  late final pulumi.Output<String> ipVersion;

  /// Indicates whether or not this load balancer can be used as a collector for
  /// packet mirroring. To prevent mirroring loops, instances behind this
  /// load balancer will not have their traffic mirrored even if a
  /// `PacketMirroring` rule applies to them.
  /// This can only be set to true for load balancers that have their
  /// `loadBalancingScheme` set to `INTERNAL`.
  late final pulumi.Output<bool?> isMirroringCollector;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this forwarding rule.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Specifies the forwarding rule type.
  /// Note that an empty string value (`""`) is also supported for some use
  /// cases, for example PSC (private service connection) regional forwarding
  /// rules.
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL`, `INTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;

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

  /// The `ports`, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
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
  late final pulumi.Output<String> portRange;

  /// The `ports`, `portRange`, and `allPorts` fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  /// The `ports` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal protocol forwarding.
  /// * You can specify a list of up to five ports by number, separated by
  /// commas. The ports can be contiguous or discontiguous.
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same `[IPAddress, IPProtocol]` pair if they share at least one port
  /// number.
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same `[IPAddress, IPProtocol]` pair if
  /// they share at least one port number.
  /// @pattern: \d+(?:-\d+)?
  late final pulumi.Output<List<String>?> ports;

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
  late final pulumi.Output<bool?> recreateClosedPsc;

  /// A reference to the region where the regional forwarding rule resides.
  /// This field is not applicable to global forwarding rules.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Service Directory resources to register this forwarding rule with.
  /// Currently, only supports a single Service Directory resource.
  /// Structure is documented below.
  late final pulumi.Output<ForwardingRuleServiceDirectoryRegistrations>
      serviceDirectoryRegistrations;

  /// An optional prefix to the service name for this Forwarding Rule.
  /// If specified, will be the first label of the fully qualified service
  /// name.
  /// The label must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the label must be 1-63 characters long and match the
  /// regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// This field is only used for INTERNAL load balancing.
  late final pulumi.Output<String?> serviceLabel;

  /// The internal fully qualified service name for this Forwarding Rule.
  /// This field is only used for INTERNAL load balancing.
  late final pulumi.Output<String> serviceName;

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
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  late final pulumi.Output<String?> target;

  ForwardingRule(
    String name, {
    ForwardingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/forwardingRule:ForwardingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allPorts = registerOutput<bool?>('allPorts');
    this.allowGlobalAccess = registerOutput<bool?>('allowGlobalAccess');
    this.allowPscGlobalAccess = registerOutput<bool?>('allowPscGlobalAccess');
    this.backendService = registerOutput<String?>('backendService');
    this.baseForwardingRule = registerOutput<String>('baseForwardingRule');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardingRuleId = registerOutput<int>('forwardingRuleId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipCollection = registerOutput<String?>('ipCollection');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.isMirroringCollector = registerOutput<bool?>('isMirroringCollector');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkTier = registerOutput<String>('networkTier');
    this.noAutomateDnsZone = registerOutput<bool?>('noAutomateDnsZone');
    this.portRange = registerOutput<String>('portRange');
    this.ports = registerOutput<List<String>?>('ports');
    this.project = registerOutput<String>('project');
    this.pscConnectionId = registerOutput<String>('pscConnectionId');
    this.pscConnectionStatus = registerOutput<String>('pscConnectionStatus');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.recreateClosedPsc = registerOutput<bool?>('recreateClosedPsc');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceDirectoryRegistrations =
        registerOutput<ForwardingRuleServiceDirectoryRegistrations>(
            'serviceDirectoryRegistrations');
    this.serviceLabel = registerOutput<String?>('serviceLabel');
    this.serviceName = registerOutput<String>('serviceName');
    this.sourceIpRanges = registerOutput<List<String>?>('sourceIpRanges');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.target = registerOutput<String?>('target');
  }
}
