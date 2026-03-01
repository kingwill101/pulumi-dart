import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_args.dart';
import 'subnetwork_log_config_response.dart';
import 'subnetwork_secondary_range_response.dart';

/// Creates a subnetwork in the specified project using the data included in the request.
class Subnetwork extends pulumi.CustomResource {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Sets the aggregation interval for collecting flow logs. Increasing the interval time reduces the amount of generated flow logs for long-lasting connections. Default is an interval of 5 seconds per connection. Valid values: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
  late final pulumi.Output<String> aggregationInterval;

  /// Whether this subnetwork's ranges can conflict with existing static routes. Setting this to true allows this subnetwork's primary and secondary ranges to overlap with (and contain) static routes that have already been configured on the corresponding network. For example if a static route has range 10.1.0.0/16, a subnet range 10.0.0.0/8 could only be created if allow_conflicting_routes=true. Overlapping is only allowed on subnetwork operations; routes whose ranges conflict with this subnetwork's ranges won't be allowed unless route.allow_conflicting_subnetworks is set to true. Typically packets destined to IPs within the subnetwork (which may contain private/sensitive data) are prevented from leaving the virtual network. Setting this field to true will disable this feature. The default value is false and applies to all existing subnetworks and automatically created subnetworks. This field cannot be set to true at resource creation time.
  late final pulumi.Output<bool> allowSubnetCidrRoutesOverlap;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  late final pulumi.Output<String> description;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  late final pulumi.Output<bool> enableFlowLogs;

  /// Enables Layer2 communication on the subnetwork.
  late final pulumi.Output<bool> enableL2;

  /// Deprecated in favor of enable in PrivateIpv6GoogleAccess. Whether the VMs in this subnet can directly access Google services via internal IPv6 addresses. This field can be both set at resource creation time and updated using patch.
  late final pulumi.Output<bool> enablePrivateV6Access;

  /// The external IPv6 address range that is owned by this subnetwork.
  late final pulumi.Output<String> externalIpv6Prefix;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  late final pulumi.Output<String> fingerprint;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  late final pulumi.Output<double> flowSampling;

  /// The gateway address for default routes to reach destination addresses outside this subnetwork.
  late final pulumi.Output<String> gatewayAddress;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  late final pulumi.Output<String> internalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  late final pulumi.Output<String> ipCidrRange;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  late final pulumi.Output<String> ipv6AccessType;

  /// This field is for internal use.
  late final pulumi.Output<String> ipv6CidrRange;

  /// Type of the resource. Always compute#subnetwork for Subnetwork resources.
  late final pulumi.Output<String> kind;

  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  late final pulumi.Output<SubnetworkLogConfigResponse> logConfig;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Configures whether metadata fields should be added to the reported VPC flow logs. Options are INCLUDE_ALL_METADATA, EXCLUDE_ALL_METADATA, and CUSTOM_METADATA. Default is EXCLUDE_ALL_METADATA.
  late final pulumi.Output<String> metadata;

  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  late final pulumi.Output<String> network;

  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  late final pulumi.Output<bool> privateIpGoogleAccess;

  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  late final pulumi.Output<String> privateIpv6GoogleAccess;
  late final pulumi.Output<String> project;

  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  late final pulumi.Output<String> purpose;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The URL of the reserved internal range.
  late final pulumi.Output<String> reservedInternalRange;

  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  late final pulumi.Output<String> role;

  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  late final pulumi.Output<List<SubnetworkSecondaryRangeResponse>>
  secondaryIpRanges;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  late final pulumi.Output<String> stackType;

  /// The state of the subnetwork, which can be one of the following values: READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained. A subnetwork that is draining cannot be used or modified until it reaches a status of READY
  late final pulumi.Output<String> state;

  /// A repeated field indicating the VLAN IDs supported on this subnetwork. During Subnet creation, specifying vlan is valid only if enable_l2 is true. During Subnet Update, specifying vlan is allowed only for l2 enabled subnets. Restricted to only one VLAN.
  late final pulumi.Output<List<int>> vlans;

  /// Creates a new [Subnetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnetwork]. {@macro pulumi_compute_alpha_subnetwork_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnetwork(
    String name, {
    SubnetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:Subnetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.aggregationInterval = registerOutput<String>('aggregationInterval');
    this.allowSubnetCidrRoutesOverlap = registerOutput<bool>(
      'allowSubnetCidrRoutesOverlap',
    );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.enableFlowLogs = registerOutput<bool>('enableFlowLogs');
    this.enableL2 = registerOutput<bool>('enableL2');
    this.enablePrivateV6Access = registerOutput<bool>('enablePrivateV6Access');
    this.externalIpv6Prefix = registerOutput<String>('externalIpv6Prefix');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.flowSampling = registerOutput<double>('flowSampling');
    this.gatewayAddress = registerOutput<String>('gatewayAddress');
    this.internalIpv6Prefix = registerOutput<String>('internalIpv6Prefix');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.ipv6CidrRange = registerOutput<String>('ipv6CidrRange');
    this.kind = registerOutput<String>('kind');
    this.logConfig = registerOutput<SubnetworkLogConfigResponse>('logConfig');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.privateIpGoogleAccess = registerOutput<bool>('privateIpGoogleAccess');
    this.privateIpv6GoogleAccess = registerOutput<String>(
      'privateIpv6GoogleAccess',
    );
    this.project = registerOutput<String>('project');
    this.purpose = registerOutput<String>('purpose');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.reservedInternalRange = registerOutput<String>(
      'reservedInternalRange',
    );
    this.role = registerOutput<String>('role');
    this.secondaryIpRanges =
        registerOutput<List<SubnetworkSecondaryRangeResponse>>(
          'secondaryIpRanges',
        );
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
    this.vlans = registerOutput<List<int>>('vlans');
  }
}
