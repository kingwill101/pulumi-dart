// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'subnetwork_aggregation_interval.dart';
import 'subnetwork_ipv6_access_type.dart';
import 'subnetwork_log_config.dart';
import 'subnetwork_metadata.dart';
import 'subnetwork_private_ipv6_google_access.dart';
import 'subnetwork_purpose.dart';
import 'subnetwork_role.dart';
import 'subnetwork_secondary_range.dart';
import 'subnetwork_stack_type.dart';

/// The set of arguments for Subnetwork.
class SubnetworkArgs {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Sets the aggregation interval for collecting flow logs. Increasing the interval time reduces the amount of generated flow logs for long-lasting connections. Default is an interval of 5 seconds per connection. Valid values: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
  final Input<SubnetworkAggregationInterval>? aggregationInterval;

  /// Whether this subnetwork's ranges can conflict with existing static routes. Setting this to true allows this subnetwork's primary and secondary ranges to overlap with (and contain) static routes that have already been configured on the corresponding network. For example if a static route has range 10.1.0.0/16, a subnet range 10.0.0.0/8 could only be created if allow_conflicting_routes=true. Overlapping is only allowed on subnetwork operations; routes whose ranges conflict with this subnetwork's ranges won't be allowed unless route.allow_conflicting_subnetworks is set to true. Typically packets destined to IPs within the subnetwork (which may contain private/sensitive data) are prevented from leaving the virtual network. Setting this field to true will disable this feature. The default value is false and applies to all existing subnetworks and automatically created subnetworks. This field cannot be set to true at resource creation time.
  final Input<bool>? allowSubnetCidrRoutesOverlap;

  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  final Input<String>? description;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final Input<bool>? enableFlowLogs;

  /// Enables Layer2 communication on the subnetwork.
  final Input<bool>? enableL2;

  /// Deprecated in favor of enable in PrivateIpv6GoogleAccess. Whether the VMs in this subnet can directly access Google services via internal IPv6 addresses. This field can be both set at resource creation time and updated using patch.
  final Input<bool>? enablePrivateV6Access;

  /// The external IPv6 address range that is owned by this subnetwork.
  final Input<String>? externalIpv6Prefix;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  final Input<double>? flowSampling;

  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  final Input<String>? ipCidrRange;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  final Input<SubnetworkIpv6AccessType>? ipv6AccessType;

  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  final Input<SubnetworkLogConfig>? logConfig;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Configures whether metadata fields should be added to the reported VPC flow logs. Options are INCLUDE_ALL_METADATA, EXCLUDE_ALL_METADATA, and CUSTOM_METADATA. Default is EXCLUDE_ALL_METADATA.
  final Input<SubnetworkMetadata>? metadata;

  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  final Input<String>? network;

  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  final Input<bool>? privateIpGoogleAccess;

  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  final Input<SubnetworkPrivateIpv6GoogleAccess>? privateIpv6GoogleAccess;
  final Input<String>? project;

  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final Input<SubnetworkPurpose>? purpose;

  /// URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The URL of the reserved internal range.
  final Input<String>? reservedInternalRange;

  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  final Input<SubnetworkRole>? role;

  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  final Input<List<SubnetworkSecondaryRange>>? secondaryIpRanges;

  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  final Input<SubnetworkStackType>? stackType;

  /// A repeated field indicating the VLAN IDs supported on this subnetwork. During Subnet creation, specifying vlan is valid only if enable_l2 is true. During Subnet Update, specifying vlan is allowed only for l2 enabled subnets. Restricted to only one VLAN.
  final Input<List<int>>? vlans;

  SubnetworkArgs({
    this.aggregationInterval,
    this.allowSubnetCidrRoutesOverlap,
    this.description,
    this.enableFlowLogs,
    this.enableL2,
    this.enablePrivateV6Access,
    this.externalIpv6Prefix,
    this.flowSampling,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.logConfig,
    this.metadata,
    this.name,
    this.network,
    this.privateIpGoogleAccess,
    this.privateIpv6GoogleAccess,
    this.project,
    this.purpose,
    required this.region,
    this.requestId,
    this.reservedInternalRange,
    this.role,
    this.secondaryIpRanges,
    this.stackType,
    this.vlans,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationIntervalValue = aggregationInterval;
    if (aggregationIntervalValue != null) {
      map['aggregationInterval'] =
          Input.mapOptionalInputValue<SubnetworkAggregationInterval, String>(
              aggregationIntervalValue, (value) => value.value);
    }
    final allowSubnetCidrRoutesOverlapValue = allowSubnetCidrRoutesOverlap;
    if (allowSubnetCidrRoutesOverlapValue != null) {
      map['allowSubnetCidrRoutesOverlap'] = allowSubnetCidrRoutesOverlapValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableFlowLogsValue = enableFlowLogs;
    if (enableFlowLogsValue != null) {
      map['enableFlowLogs'] = enableFlowLogsValue;
    }
    final enableL2Value = enableL2;
    if (enableL2Value != null) {
      map['enableL2'] = enableL2Value;
    }
    final enablePrivateV6AccessValue = enablePrivateV6Access;
    if (enablePrivateV6AccessValue != null) {
      map['enablePrivateV6Access'] = enablePrivateV6AccessValue;
    }
    final externalIpv6PrefixValue = externalIpv6Prefix;
    if (externalIpv6PrefixValue != null) {
      map['externalIpv6Prefix'] = externalIpv6PrefixValue;
    }
    final flowSamplingValue = flowSampling;
    if (flowSamplingValue != null) {
      map['flowSampling'] = flowSamplingValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] =
          Input.mapOptionalInputValue<SubnetworkIpv6AccessType, String>(
              ipv6AccessTypeValue, (value) => value.value);
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<SubnetworkLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = Input.mapOptionalInputValue<SubnetworkMetadata, String>(
          metadataValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final privateIpGoogleAccessValue = privateIpGoogleAccess;
    if (privateIpGoogleAccessValue != null) {
      map['privateIpGoogleAccess'] = privateIpGoogleAccessValue;
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = Input.mapOptionalInputValue<
          SubnetworkPrivateIpv6GoogleAccess,
          String>(privateIpv6GoogleAccessValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = Input.mapOptionalInputValue<SubnetworkPurpose, String>(
          purposeValue, (value) => value.value);
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final reservedInternalRangeValue = reservedInternalRange;
    if (reservedInternalRangeValue != null) {
      map['reservedInternalRange'] = reservedInternalRangeValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = Input.mapOptionalInputValue<SubnetworkRole, String>(
          roleValue, (value) => value.value);
    }
    final secondaryIpRangesValue = secondaryIpRanges;
    if (secondaryIpRangesValue != null) {
      map['secondaryIpRanges'] = Input.mapOptionalInputValue<
              List<SubnetworkSecondaryRange>, List<Map<String, dynamic>>>(
          secondaryIpRangesValue,
          (value) =>
              Input.encodeList<SubnetworkSecondaryRange, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] =
          Input.mapOptionalInputValue<SubnetworkStackType, String>(
              stackTypeValue, (value) => value.value);
    }
    final vlansValue = vlans;
    if (vlansValue != null) {
      map['vlans'] = vlansValue;
    }
    return map;
  }

  factory SubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return SubnetworkArgs(
      aggregationInterval: Input.asOptionalInput<SubnetworkAggregationInterval>(
          map['aggregationInterval']),
      allowSubnetCidrRoutesOverlap:
          Input.asOptionalInput<bool>(map['allowSubnetCidrRoutesOverlap']),
      description: Input.asOptionalInput<String>(map['description']),
      enableFlowLogs: Input.asOptionalInput<bool>(map['enableFlowLogs']),
      enableL2: Input.asOptionalInput<bool>(map['enableL2']),
      enablePrivateV6Access:
          Input.asOptionalInput<bool>(map['enablePrivateV6Access']),
      externalIpv6Prefix:
          Input.asOptionalInput<String>(map['externalIpv6Prefix']),
      flowSampling: Input.asOptionalInput<double>(map['flowSampling']),
      ipCidrRange: Input.asOptionalInput<String>(map['ipCidrRange']),
      ipv6AccessType: Input.asOptionalInput<SubnetworkIpv6AccessType>(
          map['ipv6AccessType']),
      logConfig: Input.asOptionalInput<SubnetworkLogConfig>(map['logConfig']),
      metadata: Input.asOptionalInput<SubnetworkMetadata>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      privateIpGoogleAccess:
          Input.asOptionalInput<bool>(map['privateIpGoogleAccess']),
      privateIpv6GoogleAccess:
          Input.asOptionalInput<SubnetworkPrivateIpv6GoogleAccess>(
              map['privateIpv6GoogleAccess']),
      project: Input.asOptionalInput<String>(map['project']),
      purpose: Input.asOptionalInput<SubnetworkPurpose>(map['purpose']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reservedInternalRange:
          Input.asOptionalInput<String>(map['reservedInternalRange']),
      role: Input.asOptionalInput<SubnetworkRole>(map['role']),
      secondaryIpRanges: Input.asOptionalInput<List<SubnetworkSecondaryRange>>(
          map['secondaryIpRanges']),
      stackType: Input.asOptionalInput<SubnetworkStackType>(map['stackType']),
      vlans: Input.asOptionalInput<List<int>>(map['vlans']),
    );
  }
}
