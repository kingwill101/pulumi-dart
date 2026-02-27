// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../subnetwork_log_config/subnetwork_log_config.dart';
import '../subnetwork_params/subnetwork_params.dart';
import '../subnetwork_secondary_ip_range/subnetwork_secondary_ip_range.dart';

/// The set of arguments for Subnetwork.
class SubnetworkArgs {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  final pulumi.Input<bool>? allowSubnetCidrRoutesOverlap;

  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  final pulumi.Input<String>? description;

  /// The range of external IPv6 addresses that are owned by this subnetwork.
  final pulumi.Input<String>? externalIpv6Prefix;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  final pulumi.Input<String>? internalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reserved_internal_range` is defined, otherwise required.
  final pulumi.Input<String>? ipCidrRange;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION
  /// mode. Use one of the following formats to specify a sub-PDP when creating
  /// a dual stack or IPv6-only subnetwork using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  final pulumi.Input<String>? ipCollection;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? ipv6AccessType;

  /// This field denotes the VPC flow logging options for this subnetwork. If
  /// logging is enabled, logs are exported to Cloud Logging. Flow logging
  /// isn't supported if the subnet `purpose` field is set to subnetwork is
  /// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
  /// Structure is documented below.
  final pulumi.Input<SubnetworkLogConfig>? logConfig;

  /// The name of the resource, provided by the client when initially
  /// creating the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network this subnet belongs to.
  /// Only networks that are in the distributed mode can have subnetworks.
  final pulumi.Input<String> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<SubnetworkParams>? params;

  /// When enabled, VMs in this subnetwork without external IP addresses can
  /// access Google APIs and services by using Private Google Access.
  final pulumi.Input<bool>? privateIpGoogleAccess;

  /// The private IPv6 google access type for the VMs in this subnet.
  final pulumi.Input<String>? privateIpv6GoogleAccess;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`.
  /// A subnet with purpose set to `REGIONAL_MANAGED_PROXY` is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
  /// A subnetwork in a given region with purpose set to `GLOBAL_MANAGED_PROXY` is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
  /// A subnetwork with purpose set to `PRIVATE_SERVICE_CONNECT` reserves the subnet for hosting a Private Service Connect published service.
  /// A subnetwork with purpose set to `PEER_MIGRATION` is a user created subnetwork that is reserved for migrating resources from one peered network to another.
  /// A subnetwork with purpose set to `PRIVATE_NAT` is used as source range for Private NAT gateways.
  /// Note that `REGIONAL_MANAGED_PROXY` is the preferred setting for all regional Envoy load balancers.
  /// If unspecified, the purpose defaults to `PRIVATE`.
  final pulumi.Input<String>? purpose;

  /// The GCP region for this subnetwork.
  final pulumi.Input<String>? region;

  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  final pulumi.Input<String>? reservedInternalRange;

  /// 'Configures subnet mask resolution for this subnetwork.'
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`.
  final pulumi.Input<String>? resolveSubnetMask;

  /// The role of subnetwork.
  /// Currently, this field is only used when `purpose` is `REGIONAL_MANAGED_PROXY`.
  /// The value can be set to `ACTIVE` or `BACKUP`.
  /// An `ACTIVE` subnetwork is one that is currently being used for Envoy-based load balancers in a region.
  /// A `BACKUP` subnetwork is one that is ready to be promoted to `ACTIVE` or is currently draining.
  /// Possible values are: `ACTIVE`, `BACKUP`.
  final pulumi.Input<String>? role;

  /// An array of configurations for secondary IP ranges for VM instances
  /// contained in this subnetwork. The primary IP of such VM must belong
  /// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
  /// to either primary or secondary ranges.
  /// Structure is documented below.
  final pulumi.Input<List<SubnetworkSecondaryIpRange>>? secondaryIpRanges;

  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondary_ip_range from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondary_ip_range as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  final pulumi.Input<bool>? sendSecondaryIpRangeIfEmpty;

  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;

  SubnetworkArgs({
    this.allowSubnetCidrRoutesOverlap,
    this.description,
    this.externalIpv6Prefix,
    this.internalIpv6Prefix,
    this.ipCidrRange,
    this.ipCollection,
    this.ipv6AccessType,
    this.logConfig,
    this.name,
    required this.network,
    this.params,
    this.privateIpGoogleAccess,
    this.privateIpv6GoogleAccess,
    this.project,
    this.purpose,
    this.region,
    this.reservedInternalRange,
    this.resolveSubnetMask,
    this.role,
    this.secondaryIpRanges,
    this.sendSecondaryIpRangeIfEmpty,
    this.stackType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowSubnetCidrRoutesOverlapValue = allowSubnetCidrRoutesOverlap;
    if (allowSubnetCidrRoutesOverlapValue != null) {
      map['allowSubnetCidrRoutesOverlap'] = allowSubnetCidrRoutesOverlapValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final externalIpv6PrefixValue = externalIpv6Prefix;
    if (externalIpv6PrefixValue != null) {
      map['externalIpv6Prefix'] = externalIpv6PrefixValue;
    }
    final internalIpv6PrefixValue = internalIpv6Prefix;
    if (internalIpv6PrefixValue != null) {
      map['internalIpv6Prefix'] = internalIpv6PrefixValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final ipCollectionValue = ipCollection;
    if (ipCollectionValue != null) {
      map['ipCollection'] = ipCollectionValue;
    }
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] = ipv6AccessTypeValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<SubnetworkLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<SubnetworkParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final privateIpGoogleAccessValue = privateIpGoogleAccess;
    if (privateIpGoogleAccessValue != null) {
      map['privateIpGoogleAccess'] = privateIpGoogleAccessValue;
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = purposeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservedInternalRangeValue = reservedInternalRange;
    if (reservedInternalRangeValue != null) {
      map['reservedInternalRange'] = reservedInternalRangeValue;
    }
    final resolveSubnetMaskValue = resolveSubnetMask;
    if (resolveSubnetMaskValue != null) {
      map['resolveSubnetMask'] = resolveSubnetMaskValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final secondaryIpRangesValue = secondaryIpRanges;
    if (secondaryIpRangesValue != null) {
      map['secondaryIpRanges'] = pulumi.Input.mapOptionalInputValue<
              List<SubnetworkSecondaryIpRange>, List<Map<String, dynamic>>>(
          secondaryIpRangesValue,
          (value) => pulumi.Input.encodeList<SubnetworkSecondaryIpRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sendSecondaryIpRangeIfEmptyValue = sendSecondaryIpRangeIfEmpty;
    if (sendSecondaryIpRangeIfEmptyValue != null) {
      map['sendSecondaryIpRangeIfEmpty'] = sendSecondaryIpRangeIfEmptyValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    return map;
  }

  factory SubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return SubnetworkArgs(
      allowSubnetCidrRoutesOverlap: pulumi.Input.asOptionalInput<bool>(
          map['allowSubnetCidrRoutesOverlap']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      externalIpv6Prefix:
          pulumi.Input.asOptionalInput<String>(map['externalIpv6Prefix']),
      internalIpv6Prefix:
          pulumi.Input.asOptionalInput<String>(map['internalIpv6Prefix']),
      ipCidrRange: pulumi.Input.asOptionalInput<String>(map['ipCidrRange']),
      ipCollection: pulumi.Input.asOptionalInput<String>(map['ipCollection']),
      ipv6AccessType:
          pulumi.Input.asOptionalInput<String>(map['ipv6AccessType']),
      logConfig:
          pulumi.Input.asOptionalInput<SubnetworkLogConfig>(map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      params: pulumi.Input.asOptionalInput<SubnetworkParams>(map['params']),
      privateIpGoogleAccess:
          pulumi.Input.asOptionalInput<bool>(map['privateIpGoogleAccess']),
      privateIpv6GoogleAccess:
          pulumi.Input.asOptionalInput<String>(map['privateIpv6GoogleAccess']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      purpose: pulumi.Input.asOptionalInput<String>(map['purpose']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservedInternalRange:
          pulumi.Input.asOptionalInput<String>(map['reservedInternalRange']),
      resolveSubnetMask:
          pulumi.Input.asOptionalInput<String>(map['resolveSubnetMask']),
      role: pulumi.Input.asOptionalInput<String>(map['role']),
      secondaryIpRanges:
          pulumi.Input.asOptionalInput<List<SubnetworkSecondaryIpRange>>(
              map['secondaryIpRanges']),
      sendSecondaryIpRangeIfEmpty: pulumi.Input.asOptionalInput<bool>(
          map['sendSecondaryIpRangeIfEmpty']),
      stackType: pulumi.Input.asOptionalInput<String>(map['stackType']),
    );
  }
}
