// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_aggregation_interval.dart';
import 'subnetwork_ipv6_access_type.dart';
import 'subnetwork_log_config.dart';
import 'subnetwork_metadata.dart';
import 'subnetwork_private_ipv6_google_access.dart';
import 'subnetwork_purpose.dart';
import 'subnetwork_role.dart';
import 'subnetwork_secondary_range.dart';
import 'subnetwork_stack_type.dart';

/// {@template pulumi_compute_alpha_subnetwork_args_doc}
/// The set of arguments for Subnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_subnetwork_args_doc}
class SubnetworkArgs {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Sets the aggregation interval for collecting flow logs. Increasing the interval time reduces the amount of generated flow logs for long-lasting connections. Default is an interval of 5 seconds per connection. Valid values: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
  final pulumi.Input<SubnetworkAggregationInterval>? aggregationInterval;

  /// Whether this subnetwork's ranges can conflict with existing static routes. Setting this to true allows this subnetwork's primary and secondary ranges to overlap with (and contain) static routes that have already been configured on the corresponding network. For example if a static route has range 10.1.0.0/16, a subnet range 10.0.0.0/8 could only be created if allow_conflicting_routes=true. Overlapping is only allowed on subnetwork operations; routes whose ranges conflict with this subnetwork's ranges won't be allowed unless route.allow_conflicting_subnetworks is set to true. Typically packets destined to IPs within the subnetwork (which may contain private/sensitive data) are prevented from leaving the virtual network. Setting this field to true will disable this feature. The default value is false and applies to all existing subnetworks and automatically created subnetworks. This field cannot be set to true at resource creation time.
  final pulumi.Input<bool>? allowSubnetCidrRoutesOverlap;

  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  final pulumi.Input<String>? description;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<bool>? enableFlowLogs;

  /// Enables Layer2 communication on the subnetwork.
  final pulumi.Input<bool>? enableL2;

  /// Deprecated in favor of enable in PrivateIpv6GoogleAccess. Whether the VMs in this subnet can directly access Google services via internal IPv6 addresses. This field can be both set at resource creation time and updated using patch.
  final pulumi.Input<bool>? enablePrivateV6Access;

  /// The external IPv6 address range that is owned by this subnetwork.
  final pulumi.Input<String>? externalIpv6Prefix;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  final pulumi.Input<double>? flowSampling;

  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  final pulumi.Input<String>? ipCidrRange;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  final pulumi.Input<SubnetworkIpv6AccessType>? ipv6AccessType;

  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  final pulumi.Input<SubnetworkLogConfig>? logConfig;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Configures whether metadata fields should be added to the reported VPC flow logs. Options are INCLUDE_ALL_METADATA, EXCLUDE_ALL_METADATA, and CUSTOM_METADATA. Default is EXCLUDE_ALL_METADATA.
  final pulumi.Input<SubnetworkMetadata>? metadata;

  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  final pulumi.Input<String>? network;

  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  final pulumi.Input<bool>? privateIpGoogleAccess;

  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  final pulumi.Input<SubnetworkPrivateIpv6GoogleAccess>?
  privateIpv6GoogleAccess;
  final pulumi.Input<String>? project;

  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<SubnetworkPurpose>? purpose;

  /// URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The URL of the reserved internal range.
  final pulumi.Input<String>? reservedInternalRange;

  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  final pulumi.Input<SubnetworkRole>? role;

  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  final pulumi.Input<List<SubnetworkSecondaryRange>>? secondaryIpRanges;

  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  final pulumi.Input<SubnetworkStackType>? stackType;

  /// A repeated field indicating the VLAN IDs supported on this subnetwork. During Subnet creation, specifying vlan is valid only if enable_l2 is true. During Subnet Update, specifying vlan is allowed only for l2 enabled subnets. Restricted to only one VLAN.
  final pulumi.Input<List<int>>? vlans;

  /// Creates a new [SubnetworkArgs].
  /// [aggregationInterval] Can only be specified if VPC flow logging for this subnetwork is enabled. Sets the aggregation interval for collecting flow logs. Increasing the interval time reduces the amount of generated flow logs for long-lasting connections. Default is an interval of 5 seconds per connection. Valid values: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
  /// [allowSubnetCidrRoutesOverlap] Whether this subnetwork's ranges can conflict with existing static routes. Setting this to true allows this subnetwork's primary and secondary ranges to overlap with (and contain) static routes that have already been configured on the corresponding network. For example if a static route has range 10.1.0.0/16, a subnet range 10.0.0.0/8 could only be created if allow_conflicting_routes=true. Overlapping is only allowed on subnetwork operations; routes whose ranges conflict with this subnetwork's ranges won't be allowed unless route.allow_conflicting_subnetworks is set to true. Typically packets destined to IPs within the subnetwork (which may contain private/sensitive data) are prevented from leaving the virtual network. Setting this field to true will disable this feature. The default value is false and applies to all existing subnetworks and automatically created subnetworks. This field cannot be set to true at resource creation time.
  /// [description] An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  /// [enableFlowLogs] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [enableL2] Enables Layer2 communication on the subnetwork.
  /// [enablePrivateV6Access] Deprecated in favor of enable in PrivateIpv6GoogleAccess. Whether the VMs in this subnet can directly access Google services via internal IPv6 addresses. This field can be both set at resource creation time and updated using patch.
  /// [externalIpv6Prefix] The external IPv6 address range that is owned by this subnetwork.
  /// [flowSampling] Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  /// [ipCidrRange] The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  /// [logConfig] This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  /// [metadata] Can only be specified if VPC flow logging for this subnetwork is enabled. Configures whether metadata fields should be added to the reported VPC flow logs. Options are INCLUDE_ALL_METADATA, EXCLUDE_ALL_METADATA, and CUSTOM_METADATA. Default is EXCLUDE_ALL_METADATA.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  /// [privateIpGoogleAccess] Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  /// [privateIpv6GoogleAccess] This field is for internal use. This field can be both set at resource creation time and updated using patch.
  /// [project] Optional.
  /// [purpose] The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [region] URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservedInternalRange] The URL of the reserved internal range.
  /// [role] The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  /// [stackType] The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  /// [vlans] A repeated field indicating the VLAN IDs supported on this subnetwork. During Subnet creation, specifying vlan is valid only if enable_l2 is true. During Subnet Update, specifying vlan is allowed only for l2 enabled subnets. Restricted to only one VLAN.
  SubnetworkArgs({
    SubnetworkAggregationInterval? aggregationInterval,
    bool? allowSubnetCidrRoutesOverlap,
    String? description,
    bool? enableFlowLogs,
    bool? enableL2,
    bool? enablePrivateV6Access,
    String? externalIpv6Prefix,
    double? flowSampling,
    String? ipCidrRange,
    SubnetworkIpv6AccessType? ipv6AccessType,
    SubnetworkLogConfig? logConfig,
    SubnetworkMetadata? metadata,
    String? name,
    String? network,
    bool? privateIpGoogleAccess,
    SubnetworkPrivateIpv6GoogleAccess? privateIpv6GoogleAccess,
    String? project,
    SubnetworkPurpose? purpose,
    required String region,
    String? requestId,
    String? reservedInternalRange,
    SubnetworkRole? role,
    List<SubnetworkSecondaryRange>? secondaryIpRanges,
    SubnetworkStackType? stackType,
    List<int>? vlans,
  }) : aggregationInterval =
           pulumi.Input.asOptionalInput<SubnetworkAggregationInterval>(
             aggregationInterval,
           ),
       allowSubnetCidrRoutesOverlap = pulumi.Input.asOptionalInput<bool>(
         allowSubnetCidrRoutesOverlap,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       enableFlowLogs = pulumi.Input.asOptionalInput<bool>(enableFlowLogs),
       enableL2 = pulumi.Input.asOptionalInput<bool>(enableL2),
       enablePrivateV6Access = pulumi.Input.asOptionalInput<bool>(
         enablePrivateV6Access,
       ),
       externalIpv6Prefix = pulumi.Input.asOptionalInput<String>(
         externalIpv6Prefix,
       ),
       flowSampling = pulumi.Input.asOptionalInput<double>(flowSampling),
       ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
       ipv6AccessType = pulumi.Input.asOptionalInput<SubnetworkIpv6AccessType>(
         ipv6AccessType,
       ),
       logConfig = pulumi.Input.asOptionalInput<SubnetworkLogConfig>(logConfig),
       metadata = pulumi.Input.asOptionalInput<SubnetworkMetadata>(metadata),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       privateIpGoogleAccess = pulumi.Input.asOptionalInput<bool>(
         privateIpGoogleAccess,
       ),
       privateIpv6GoogleAccess =
           pulumi.Input.asOptionalInput<SubnetworkPrivateIpv6GoogleAccess>(
             privateIpv6GoogleAccess,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       purpose = pulumi.Input.asOptionalInput<SubnetworkPurpose>(purpose),
       region = pulumi.Input.asInput<String>(region),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       reservedInternalRange = pulumi.Input.asOptionalInput<String>(
         reservedInternalRange,
       ),
       role = pulumi.Input.asOptionalInput<SubnetworkRole>(role),
       secondaryIpRanges =
           pulumi.Input.asOptionalInput<List<SubnetworkSecondaryRange>>(
             secondaryIpRanges,
           ),
       stackType = pulumi.Input.asOptionalInput<SubnetworkStackType>(stackType),
       vlans = pulumi.Input.asOptionalInput<List<int>>(vlans);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkAggregationInterval,
            String
          >(aggregationInterval, (value) => value.value),
      'allowSubnetCidrRoutesOverlap': ?allowSubnetCidrRoutesOverlap,
      'description': ?description,
      'enableFlowLogs': ?enableFlowLogs,
      'enableL2': ?enableL2,
      'enablePrivateV6Access': ?enablePrivateV6Access,
      'externalIpv6Prefix': ?externalIpv6Prefix,
      'flowSampling': ?flowSampling,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType':
          ?pulumi.Input.mapOptionalInputValue<SubnetworkIpv6AccessType, String>(
            ipv6AccessType,
            (value) => value.value,
          ),
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<SubnetworkMetadata, String>(
            metadata,
            (value) => value.value,
          ),
      'name': ?name,
      'network': ?network,
      'privateIpGoogleAccess': ?privateIpGoogleAccess,
      'privateIpv6GoogleAccess':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkPrivateIpv6GoogleAccess,
            String
          >(privateIpv6GoogleAccess, (value) => value.value),
      'project': ?project,
      'purpose': ?pulumi.Input.mapOptionalInputValue<SubnetworkPurpose, String>(
        purpose,
        (value) => value.value,
      ),
      'region': region,
      'requestId': ?requestId,
      'reservedInternalRange': ?reservedInternalRange,
      'role': ?pulumi.Input.mapOptionalInputValue<SubnetworkRole, String>(
        role,
        (value) => value.value,
      ),
      'secondaryIpRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubnetworkSecondaryRange>,
            List<Map<String, dynamic>>
          >(
            secondaryIpRanges,
            (value) =>
                pulumi.Input.encodeList<
                  SubnetworkSecondaryRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stackType':
          ?pulumi.Input.mapOptionalInputValue<SubnetworkStackType, String>(
            stackType,
            (value) => value.value,
          ),
      'vlans': ?vlans,
    };
  }

  factory SubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return SubnetworkArgs(
      aggregationInterval: map['aggregationInterval'] == null
          ? null
          : SubnetworkAggregationInterval.fromValue(
              map['aggregationInterval'] as String,
            ),
      allowSubnetCidrRoutesOverlap: map['allowSubnetCidrRoutesOverlap'] == null
          ? null
          : map['allowSubnetCidrRoutesOverlap'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      enableFlowLogs: map['enableFlowLogs'] == null
          ? null
          : map['enableFlowLogs'] as bool,
      enableL2: map['enableL2'] == null ? null : map['enableL2'] as bool,
      enablePrivateV6Access: map['enablePrivateV6Access'] == null
          ? null
          : map['enablePrivateV6Access'] as bool,
      externalIpv6Prefix: map['externalIpv6Prefix'] == null
          ? null
          : map['externalIpv6Prefix'] as String,
      flowSampling: map['flowSampling'] == null
          ? null
          : map['flowSampling'] as double,
      ipCidrRange: map['ipCidrRange'] == null
          ? null
          : map['ipCidrRange'] as String,
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : SubnetworkIpv6AccessType.fromValue(map['ipv6AccessType'] as String),
      logConfig: map['logConfig'] == null
          ? null
          : SubnetworkLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>(),
            ),
      metadata: map['metadata'] == null
          ? null
          : SubnetworkMetadata.fromValue(map['metadata'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      privateIpGoogleAccess: map['privateIpGoogleAccess'] == null
          ? null
          : map['privateIpGoogleAccess'] as bool,
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : SubnetworkPrivateIpv6GoogleAccess.fromValue(
              map['privateIpv6GoogleAccess'] as String,
            ),
      project: map['project'] == null ? null : map['project'] as String,
      purpose: map['purpose'] == null
          ? null
          : SubnetworkPurpose.fromValue(map['purpose'] as String),
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      reservedInternalRange: map['reservedInternalRange'] == null
          ? null
          : map['reservedInternalRange'] as String,
      role: map['role'] == null
          ? null
          : SubnetworkRole.fromValue(map['role'] as String),
      secondaryIpRanges: map['secondaryIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<SubnetworkSecondaryRange>(
              map['secondaryIpRanges'],
              (value) => SubnetworkSecondaryRange.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      stackType: map['stackType'] == null
          ? null
          : SubnetworkStackType.fromValue(map['stackType'] as String),
      vlans: map['vlans'] == null ? null : (map['vlans'] as List).cast<int>(),
    );
  }
}
