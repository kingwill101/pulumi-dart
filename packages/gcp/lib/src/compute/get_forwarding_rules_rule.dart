// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_rule_service_directory_registration.dart';

class GetForwardingRulesRule {
  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'allPorts' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, SCTP, or
  /// L3_DEFAULT.
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal and external protocol forwarding.
  /// * Set this field to true to allow packets addressed to any port or packets
  /// lacking destination port information (for example, UDP fragments after the
  /// first fragment) to be forwarded to the backends configured with this
  /// forwarding rule. The L3_DEFAULT protocol requires 'allPorts' be set to
  /// true.
  final bool allPorts;

  /// This field is used along with the 'backend_service' field for
  /// internal load balancing or with the 'target' field for internal
  /// TargetInstance.
  ///
  /// If the field is set to 'TRUE', clients can access ILB from all
  /// regions.
  ///
  /// Otherwise only allows access from clients in the same region as the
  /// internal load balancer.
  final bool allowGlobalAccess;

  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final bool allowPscGlobalAccess;

  /// Identifies the backend service to which the forwarding rule sends traffic.
  ///
  /// Required for Internal TCP/UDP Load Balancing and Network Load Balancing;
  /// must be omitted for all other load balancer types.
  final String backendService;

  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  final String baseForwardingRule;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final String description;
  final Map<String, String> effectiveLabels;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  final int forwardingRuleId;

  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced 'target' or 'backendService'.
  ///
  /// While creating a forwarding rule, specifying an 'IPAddress' is
  /// required under the following circumstances:
  ///
  /// * When the 'target' is set to 'targetGrpcProxy' and
  /// 'validateForProxyless' is set to 'true', the
  /// 'IPAddress' should be set to '0.0.0.0'.
  /// * When the 'target' is a Private Service Connect Google APIs
  /// bundle, you must specify an 'IPAddress'.
  ///
  /// Otherwise, you can optionally specify an IP address that references an
  /// existing static (reserved) IP address resource. When omitted, Google Cloud
  /// assigns an ephemeral IP address.
  ///
  /// Use one of the following formats to specify an IP address while creating a
  /// forwarding rule:
  ///
  /// * IP address number, as in '100.1.2.3'
  /// * IPv6 address range, as in '2600:1234::/96'
  /// * Full resource URL, as in
  /// 'https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name'
  /// * Partial URL or by name, as in:
  /// * 'projects/project_id/regions/region/addresses/address-name'
  /// * 'regions/region/addresses/address-name'
  /// * 'global/addresses/address-name'
  /// * 'address-name'
  ///
  /// The forwarding rule's 'target' or 'backendService',
  /// and in most cases, also the 'loadBalancingScheme', determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  ///
  /// When reading an 'IPAddress', the API always returns the IP
  /// address number.
  final String ipAddress;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_FORWARDING_RULE_CREATION mode.
  /// Use one of the following formats to specify a sub-PDP when creating an
  /// IPv6 NetLB forwarding rule using BYOIP:
  /// Full resource URL, as in:
  /// * 'https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
  /// Partial URL, as in:
  /// * 'projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}'
  /// * 'regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}'
  final String ipCollection;

  /// The IP protocol to which this rule applies.
  ///
  /// For protocol forwarding, valid
  /// options are 'TCP', 'UDP', 'ESP',
  /// 'AH', 'SCTP', 'ICMP' and
  /// 'L3_DEFAULT'.
  ///
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  ///
  /// A Forwarding Rule with protocol L3_DEFAULT can attach with target instance or
  /// backend service with UNSPECIFIED protocol.
  /// A forwarding rule with "L3_DEFAULT" IPProtocal cannot be attached to a backend service with TCP or UDP. Possible values: ["TCP", "UDP", "ESP", "AH", "SCTP", "ICMP", "L3_DEFAULT"]
  final String ipProtocol;

  /// The IP address version that will be used by this forwarding rule.
  /// Valid options are IPV4 and IPV6.
  ///
  /// If not set, the IPv4 address will be used by default. Possible values: ["IPV4", "IPV6"]
  final String ipVersion;

  /// Indicates whether or not this load balancer can be used as a collector for
  /// packet mirroring. To prevent mirroring loops, instances behind this
  /// load balancer will not have their traffic mirrored even if a
  /// 'PacketMirroring' rule applies to them.
  ///
  /// This can only be set to true for load balancers that have their
  /// 'loadBalancingScheme' set to 'INTERNAL'.
  final bool isMirroringCollector;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final String labelFingerprint;

  /// Labels to apply to this forwarding rule.  A list of key->value pairs.
  ///
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Map<String, String> labels;

  /// Specifies the forwarding rule type.
  ///
  /// Note that an empty string value ('""') is also supported for some use
  /// cases, for example PSC (private service connection) regional forwarding
  /// rules.
  ///
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts). Default value: "EXTERNAL" Possible values: ["EXTERNAL", "EXTERNAL_MANAGED", "INTERNAL", "INTERNAL_MANAGED"]
  final String loadBalancingScheme;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  ///
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression 'a-z?' which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  ///
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, the forwarding rule name must be a 1-20 characters string with
  /// lowercase letters and numbers and must start with a letter.
  final String name;

  /// This field is not used for external load balancing.
  ///
  /// For Internal TCP/UDP Load Balancing, this field identifies the network that
  /// the load balanced IP should belong to for this Forwarding Rule.
  /// If the subnetwork is specified, the network of the subnetwork will be used.
  /// If neither subnetwork nor this field is specified, the default network will
  /// be used.
  ///
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, a network must be provided.
  final String network;

  /// This signifies the networking tier used for configuring
  /// this load balancer and can only take the following values:
  /// 'PREMIUM', 'STANDARD'.
  ///
  /// For regional ForwardingRule, the valid values are 'PREMIUM' and
  /// 'STANDARD'. For GlobalForwardingRule, the valid value is
  /// 'PREMIUM'.
  ///
  /// If this field is not specified, it is assumed to be 'PREMIUM'.
  /// If 'IPAddress' is specified, this value must be equal to the
  /// networkTier of the Address. Possible values: ["PREMIUM", "STANDARD"]
  final String networkTier;

  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  final bool noAutomateDnsZone;

  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'portRange' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: external passthrough
  /// Network Load Balancers, internal and external proxy Network Load
  /// Balancers, internal and external Application Load Balancers, external
  /// protocol forwarding, and Classic VPN.
  /// * Some products have restrictions on what ports can be used. See
  /// [port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
  /// for details.
  ///
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same '[IPAddress, IPProtocol]' pair, and cannot have overlapping
  /// 'portRange's.
  ///
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair, and
  /// cannot have overlapping 'portRange's.
  ///
  /// @pattern: \d+(?:-\d+)?
  final String portRange;

  /// The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// Only packets addressed to ports in the specified range will be forwarded
  /// to the backends configured with this forwarding rule.
  ///
  /// The 'ports' field has the following limitations:
  /// * It requires that the forwarding rule 'IPProtocol' be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: internal passthrough
  /// Network Load Balancers, backend service-based external passthrough Network
  /// Load Balancers, and internal protocol forwarding.
  /// * You can specify a list of up to five ports by number, separated by
  /// commas. The ports can be contiguous or discontiguous.
  ///
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same '[IPAddress, IPProtocol]' pair if they share at least one port
  /// number.
  ///
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same '[IPAddress, IPProtocol]' pair if
  /// they share at least one port number.
  ///
  /// @pattern: \d+(?:-\d+)?
  final List<String> ports;

  /// The name of the project.
  final String project;

  /// The PSC connection id of the PSC Forwarding Rule.
  final String pscConnectionId;

  /// The PSC connection status of the PSC Forwarding Rule. Possible values: 'STATUS_UNSPECIFIED', 'PENDING', 'ACCEPTED', 'REJECTED', 'CLOSED'
  final String pscConnectionStatus;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;
  final bool recreateClosedPsc;

  /// The region you want to get the forwarding rules from.
  ///
  /// These arguments must be set in either the provider or the resource in order for the information to be queried.
  final String region;

  /// The URI of the resource.
  final String selfLink;

  /// Service Directory resources to register this forwarding rule with.
  ///
  /// Currently, only supports a single Service Directory resource.
  final List<GetForwardingRulesRuleServiceDirectoryRegistration>
      serviceDirectoryRegistrations;

  /// An optional prefix to the service name for this Forwarding Rule.
  /// If specified, will be the first label of the fully qualified service
  /// name.
  ///
  /// The label must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the label must be 1-63 characters long and match the
  /// regular expression 'a-z?' which means the first
  /// character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  ///
  /// This field is only used for INTERNAL load balancing.
  final String serviceLabel;

  /// The internal fully qualified service name for this Forwarding Rule.
  ///
  /// This field is only used for INTERNAL load balancing.
  final String serviceName;

  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final List<String> sourceIpRanges;

  /// This field identifies the subnetwork that the load balanced IP should
  /// belong to for this Forwarding Rule, used in internal load balancing and
  /// network load balancing with IPv6.
  ///
  /// If the network specified is in auto subnet mode, this field is optional.
  /// However, a subnetwork must be specified if the network is in custom subnet
  /// mode or when creating external forwarding rule with IPv6.
  final String subnetwork;

  /// The URL of the target resource to receive the matched traffic.  For
  /// regional forwarding rules, this target must be in the same region as the
  /// forwarding rule. For global forwarding rules, this target must be a global
  /// load balancing resource.
  ///
  /// The forwarded traffic must be of a type appropriate to the target object.
  /// *  For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  ///
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  final String target;

  /// Creates a new [GetForwardingRulesRule].
  /// [allPorts] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [allowGlobalAccess] This field is used along with the 'backend_service' field for
  /// [allowPscGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [backendService] Identifies the backend service to which the forwarding rule sends traffic.
  /// [baseForwardingRule] [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [effectiveLabels] Required.
  /// [forwardingRuleId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [ipAddress] IP address for which this forwarding rule accepts traffic. When a client
  /// [ipCollection] Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// [ipProtocol] The IP protocol to which this rule applies.
  /// [ipVersion] The IP address version that will be used by this forwarding rule.
  /// [isMirroringCollector] Indicates whether or not this load balancer can be used as a collector for
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this forwarding rule.  A list of key->value pairs.
  /// [loadBalancingScheme] Specifies the forwarding rule type.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [network] This field is not used for external load balancing.
  /// [networkTier] This signifies the networking tier used for configuring
  /// [noAutomateDnsZone] This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  /// [portRange] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [ports] The 'ports', 'portRange', and 'allPorts' fields are mutually exclusive.
  /// [project] The name of the project.
  /// [pscConnectionId] The PSC connection id of the PSC Forwarding Rule.
  /// [pscConnectionStatus] The PSC connection status of the PSC Forwarding Rule. Possible values: 'STATUS_UNSPECIFIED', 'PENDING', 'ACCEPTED', 'REJECTED', 'CLOSED'
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [recreateClosedPsc] Required.
  /// [region] The region you want to get the forwarding rules from.
  /// [selfLink] The URI of the resource.
  /// [serviceDirectoryRegistrations] Service Directory resources to register this forwarding rule with.
  /// [serviceLabel] An optional prefix to the service name for this Forwarding Rule.
  /// [serviceName] The internal fully qualified service name for this Forwarding Rule.
  /// [sourceIpRanges] If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  /// [subnetwork] This field identifies the subnetwork that the load balanced IP should
  /// [target] The URL of the target resource to receive the matched traffic.  For
  GetForwardingRulesRule({
    required this.allPorts,
    required this.allowGlobalAccess,
    required this.allowPscGlobalAccess,
    required this.backendService,
    required this.baseForwardingRule,
    required this.creationTimestamp,
    required this.description,
    required this.effectiveLabels,
    required this.forwardingRuleId,
    required this.ipAddress,
    required this.ipCollection,
    required this.ipProtocol,
    required this.ipVersion,
    required this.isMirroringCollector,
    required this.labelFingerprint,
    required this.labels,
    required this.loadBalancingScheme,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.noAutomateDnsZone,
    required this.portRange,
    required this.ports,
    required this.project,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
    required this.pulumiLabels,
    required this.recreateClosedPsc,
    required this.region,
    required this.selfLink,
    required this.serviceDirectoryRegistrations,
    required this.serviceLabel,
    required this.serviceName,
    required this.sourceIpRanges,
    required this.subnetwork,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allPorts'] = allPorts;
    map['allowGlobalAccess'] = allowGlobalAccess;
    map['allowPscGlobalAccess'] = allowPscGlobalAccess;
    map['backendService'] = backendService;
    map['baseForwardingRule'] = baseForwardingRule;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['forwardingRuleId'] = forwardingRuleId;
    map['ipAddress'] = ipAddress;
    map['ipCollection'] = ipCollection;
    map['ipProtocol'] = ipProtocol;
    map['ipVersion'] = ipVersion;
    map['isMirroringCollector'] = isMirroringCollector;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['name'] = name;
    map['network'] = network;
    map['networkTier'] = networkTier;
    map['noAutomateDnsZone'] = noAutomateDnsZone;
    map['portRange'] = portRange;
    map['ports'] = ports;
    map['project'] = project;
    map['pscConnectionId'] = pscConnectionId;
    map['pscConnectionStatus'] = pscConnectionStatus;
    map['pulumiLabels'] = pulumiLabels;
    map['recreateClosedPsc'] = recreateClosedPsc;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['serviceDirectoryRegistrations'] = pulumi.Input.encodeList<
            GetForwardingRulesRuleServiceDirectoryRegistration,
            Map<String, dynamic>>(
        serviceDirectoryRegistrations, (value) => value.toMap());
    map['serviceLabel'] = serviceLabel;
    map['serviceName'] = serviceName;
    map['sourceIpRanges'] = sourceIpRanges;
    map['subnetwork'] = subnetwork;
    map['target'] = target;
    return map;
  }

  factory GetForwardingRulesRule.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesRule(
      allPorts: map['allPorts'] as bool,
      allowGlobalAccess: map['allowGlobalAccess'] as bool,
      allowPscGlobalAccess: map['allowPscGlobalAccess'] as bool,
      backendService: map['backendService'] as String,
      baseForwardingRule: map['baseForwardingRule'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      forwardingRuleId: map['forwardingRuleId'] as int,
      ipAddress: map['ipAddress'] as String,
      ipCollection: map['ipCollection'] as String,
      ipProtocol: map['ipProtocol'] as String,
      ipVersion: map['ipVersion'] as String,
      isMirroringCollector: map['isMirroringCollector'] as bool,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkTier: map['networkTier'] as String,
      noAutomateDnsZone: map['noAutomateDnsZone'] as bool,
      portRange: map['portRange'] as String,
      ports: (map['ports'] as List).cast<String>(),
      project: map['project'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      recreateClosedPsc: map['recreateClosedPsc'] as bool,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      serviceDirectoryRegistrations: pulumi.Input.decodeList<
              GetForwardingRulesRuleServiceDirectoryRegistration>(
          map['serviceDirectoryRegistrations'],
          (value) => GetForwardingRulesRuleServiceDirectoryRegistration.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceLabel: map['serviceLabel'] as String,
      serviceName: map['serviceName'] as String,
      sourceIpRanges: (map['sourceIpRanges'] as List).cast<String>(),
      subnetwork: map['subnetwork'] as String,
      target: map['target'] as String,
    );
  }
}
