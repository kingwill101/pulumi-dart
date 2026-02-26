import 'package:pulumi/pulumi.dart';
import 'subnetwork_args3.dart';
import 'subnetwork_log_config_response3.dart';
import 'subnetwork_secondary_range_response3.dart';

/// Creates a subnetwork in the specified project using the data included in the request.
class Subnetwork3 extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  late final Output<String> description;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  late final Output<bool> enableFlowLogs;

  /// The external IPv6 address range that is owned by this subnetwork.
  late final Output<String> externalIpv6Prefix;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  late final Output<String> fingerprint;

  /// The gateway address for default routes to reach destination addresses outside this subnetwork.
  late final Output<String> gatewayAddress;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  late final Output<String> internalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  late final Output<String> ipCidrRange;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  late final Output<String> ipv6AccessType;

  /// This field is for internal use.
  late final Output<String> ipv6CidrRange;

  /// Type of the resource. Always compute#subnetwork for Subnetwork resources.
  late final Output<String> kind;

  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  late final Output<SubnetworkLogConfigResponse3> logConfig;

  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  late final Output<String> network;

  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  late final Output<bool> privateIpGoogleAccess;

  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  late final Output<String> privateIpv6GoogleAccess;
  late final Output<String> project;

  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  late final Output<String> purpose;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  late final Output<String> role;

  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  late final Output<List<SubnetworkSecondaryRangeResponse3>> secondaryIpRanges;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  late final Output<String> stackType;

  /// The state of the subnetwork, which can be one of the following values: READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained. A subnetwork that is draining cannot be used or modified until it reaches a status of READY
  late final Output<String> state;

  Subnetwork3(
    String name, {
    SubnetworkArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:Subnetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.enableFlowLogs = Output.createUnknown<bool>();
    this.externalIpv6Prefix = Output.createUnknown<String>();
    this.fingerprint = Output.createUnknown<String>();
    this.gatewayAddress = Output.createUnknown<String>();
    this.internalIpv6Prefix = Output.createUnknown<String>();
    this.ipCidrRange = Output.createUnknown<String>();
    this.ipv6AccessType = Output.createUnknown<String>();
    this.ipv6CidrRange = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.logConfig = Output.createUnknown<SubnetworkLogConfigResponse3>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.privateIpGoogleAccess = Output.createUnknown<bool>();
    this.privateIpv6GoogleAccess = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.purpose = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.role = Output.createUnknown<String>();
    this.secondaryIpRanges =
        Output.createUnknown<List<SubnetworkSecondaryRangeResponse3>>();
    this.selfLink = Output.createUnknown<String>();
    this.stackType = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
