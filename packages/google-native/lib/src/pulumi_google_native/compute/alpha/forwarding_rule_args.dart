// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'forwarding_rule_ip_protocol.dart';
import 'forwarding_rule_ip_version.dart';
import 'forwarding_rule_load_balancing_scheme.dart';
import 'forwarding_rule_network_tier.dart';
import 'forwarding_rule_psc_connection_status.dart';
import 'forwarding_rule_service_directory_registration.dart';
import 'metadata_filter.dart';

/// The set of arguments for ForwardingRule.
class ForwardingRuleArgs {
  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true.
  final Input<bool>? allPorts;

  /// This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If set to true, clients can access the Internal TCP/UDP Load Balancer, Internal HTTP(S) and TCP Proxy Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  final Input<bool>? allowGlobalAccess;

  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final Input<bool>? allowPscGlobalAccess;

  /// This is used in PSC consumer ForwardingRule to control whether the producer is allowed to inject packets into the consumer's network. If set to true, the target service attachment must have tunneling enabled and TunnelingConfig.RoutingMode set to PACKET_INJECTION Non-PSC forwarding rules should not use this field.
  final Input<bool>? allowPscPacketInjection;

  /// Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  final Input<String>? backendService;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  final Input<String>? ipAddress;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP in EXTERNAL_IPV6_FORWARDING_RULE_CREATION mode. Use one of the following formats to specify a sub-PDP when creating an IPv6 NetLB forwarding rule using BYOIP: Full resource URL, as in https://www.googleapis.com/compute/v1/projects/project_id/regions/region /publicDelegatedPrefixes/sub-pdp-name Partial URL, as in: - projects/project_id/regions/region/publicDelegatedPrefixes/sub-pdp-name - regions/region/publicDelegatedPrefixes/sub-pdp-name
  final Input<String>? ipCollection;

  /// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  final Input<ForwardingRuleIpProtocol>? ipProtocol;

  /// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  final Input<ForwardingRuleIpVersion>? ipVersion;

  /// Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  final Input<bool>? isMirroringCollector;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  final Input<ForwardingRuleLoadBalancingScheme>? loadBalancingScheme;

  /// Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final Input<List<MetadataFilter>>? metadataFilters;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  final Input<String>? name;

  /// This field is not used for global external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  final Input<String>? network;

  /// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  final Input<ForwardingRuleNetworkTier>? networkTier;

  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  final Input<bool>? noAutomateDnsZone;

  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\d+(?:-\\d+)?
  final Input<String>? portRange;

  /// The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\d+(?:-\\d+)?
  final Input<List<String>>? ports;
  final Input<String>? project;
  final Input<ForwardingRulePscConnectionStatus>? pscConnectionStatus;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  final Input<List<ForwardingRuleServiceDirectoryRegistration>>?
      serviceDirectoryRegistrations;

  /// An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  final Input<String>? serviceLabel;

  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final Input<List<String>>? sourceIpRanges;

  /// This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  final Input<String>? subnetwork;

  /// The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment.
  final Input<String>? target;

  ForwardingRuleArgs({
    this.allPorts,
    this.allowGlobalAccess,
    this.allowPscGlobalAccess,
    this.allowPscPacketInjection,
    this.backendService,
    this.description,
    this.ipAddress,
    this.ipCollection,
    this.ipProtocol,
    this.ipVersion,
    this.isMirroringCollector,
    this.labels,
    this.loadBalancingScheme,
    this.metadataFilters,
    this.name,
    this.network,
    this.networkTier,
    this.noAutomateDnsZone,
    this.portRange,
    this.ports,
    this.project,
    this.pscConnectionStatus,
    required this.region,
    this.requestId,
    this.serviceDirectoryRegistrations,
    this.serviceLabel,
    this.sourceIpRanges,
    this.subnetwork,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allPortsValue = allPorts;
    if (allPortsValue != null) {
      map['allPorts'] = allPortsValue;
    }
    final allowGlobalAccessValue = allowGlobalAccess;
    if (allowGlobalAccessValue != null) {
      map['allowGlobalAccess'] = allowGlobalAccessValue;
    }
    final allowPscGlobalAccessValue = allowPscGlobalAccess;
    if (allowPscGlobalAccessValue != null) {
      map['allowPscGlobalAccess'] = allowPscGlobalAccessValue;
    }
    final allowPscPacketInjectionValue = allowPscPacketInjection;
    if (allowPscPacketInjectionValue != null) {
      map['allowPscPacketInjection'] = allowPscPacketInjectionValue;
    }
    final backendServiceValue = backendService;
    if (backendServiceValue != null) {
      map['backendService'] = backendServiceValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipCollectionValue = ipCollection;
    if (ipCollectionValue != null) {
      map['ipCollection'] = ipCollectionValue;
    }
    final ipProtocolValue = ipProtocol;
    if (ipProtocolValue != null) {
      map['ipProtocol'] =
          Input.mapOptionalInputValue<ForwardingRuleIpProtocol, String>(
              ipProtocolValue, (value) => value.value);
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] =
          Input.mapOptionalInputValue<ForwardingRuleIpVersion, String>(
              ipVersionValue, (value) => value.value);
    }
    final isMirroringCollectorValue = isMirroringCollector;
    if (isMirroringCollectorValue != null) {
      map['isMirroringCollector'] = isMirroringCollectorValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = Input.mapOptionalInputValue<
          ForwardingRuleLoadBalancingScheme,
          String>(loadBalancingSchemeValue, (value) => value.value);
    }
    final metadataFiltersValue = metadataFilters;
    if (metadataFiltersValue != null) {
      map['metadataFilters'] = Input.mapOptionalInputValue<List<MetadataFilter>,
              List<Map<String, dynamic>>>(
          metadataFiltersValue,
          (value) => Input.encodeList<MetadataFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkTierValue = networkTier;
    if (networkTierValue != null) {
      map['networkTier'] =
          Input.mapOptionalInputValue<ForwardingRuleNetworkTier, String>(
              networkTierValue, (value) => value.value);
    }
    final noAutomateDnsZoneValue = noAutomateDnsZone;
    if (noAutomateDnsZoneValue != null) {
      map['noAutomateDnsZone'] = noAutomateDnsZoneValue;
    }
    final portRangeValue = portRange;
    if (portRangeValue != null) {
      map['portRange'] = portRangeValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConnectionStatusValue = pscConnectionStatus;
    if (pscConnectionStatusValue != null) {
      map['pscConnectionStatus'] = Input.mapOptionalInputValue<
          ForwardingRulePscConnectionStatus,
          String>(pscConnectionStatusValue, (value) => value.value);
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceDirectoryRegistrationsValue = serviceDirectoryRegistrations;
    if (serviceDirectoryRegistrationsValue != null) {
      map['serviceDirectoryRegistrations'] = Input.mapOptionalInputValue<
              List<ForwardingRuleServiceDirectoryRegistration>,
              List<Map<String, dynamic>>>(
          serviceDirectoryRegistrationsValue,
          (value) => Input.encodeList<
              ForwardingRuleServiceDirectoryRegistration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final serviceLabelValue = serviceLabel;
    if (serviceLabelValue != null) {
      map['serviceLabel'] = serviceLabelValue;
    }
    final sourceIpRangesValue = sourceIpRanges;
    if (sourceIpRangesValue != null) {
      map['sourceIpRanges'] = sourceIpRangesValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory ForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleArgs(
      allPorts: Input.asOptionalInput<bool>(map['allPorts']),
      allowGlobalAccess: Input.asOptionalInput<bool>(map['allowGlobalAccess']),
      allowPscGlobalAccess:
          Input.asOptionalInput<bool>(map['allowPscGlobalAccess']),
      allowPscPacketInjection:
          Input.asOptionalInput<bool>(map['allowPscPacketInjection']),
      backendService: Input.asOptionalInput<String>(map['backendService']),
      description: Input.asOptionalInput<String>(map['description']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      ipCollection: Input.asOptionalInput<String>(map['ipCollection']),
      ipProtocol:
          Input.asOptionalInput<ForwardingRuleIpProtocol>(map['ipProtocol']),
      ipVersion:
          Input.asOptionalInput<ForwardingRuleIpVersion>(map['ipVersion']),
      isMirroringCollector:
          Input.asOptionalInput<bool>(map['isMirroringCollector']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingScheme:
          Input.asOptionalInput<ForwardingRuleLoadBalancingScheme>(
              map['loadBalancingScheme']),
      metadataFilters:
          Input.asOptionalInput<List<MetadataFilter>>(map['metadataFilters']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkTier:
          Input.asOptionalInput<ForwardingRuleNetworkTier>(map['networkTier']),
      noAutomateDnsZone: Input.asOptionalInput<bool>(map['noAutomateDnsZone']),
      portRange: Input.asOptionalInput<String>(map['portRange']),
      ports: Input.asOptionalInput<List<String>>(map['ports']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConnectionStatus:
          Input.asOptionalInput<ForwardingRulePscConnectionStatus>(
              map['pscConnectionStatus']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serviceDirectoryRegistrations: Input.asOptionalInput<
              List<ForwardingRuleServiceDirectoryRegistration>>(
          map['serviceDirectoryRegistrations']),
      serviceLabel: Input.asOptionalInput<String>(map['serviceLabel']),
      sourceIpRanges:
          Input.asOptionalInput<List<String>>(map['sourceIpRanges']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      target: Input.asOptionalInput<String>(map['target']),
    );
  }
}
