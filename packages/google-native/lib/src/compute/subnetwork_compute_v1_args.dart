// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_ipv6_access_type_compute_v1.dart';
import 'subnetwork_log_config_compute_v1.dart';
import 'subnetwork_private_ipv6_google_access_compute_v1.dart';
import 'subnetwork_purpose_compute_v1.dart';
import 'subnetwork_role_compute_v1.dart';
import 'subnetwork_secondary_range_compute_v1.dart';
import 'subnetwork_stack_type_compute_v1.dart';

/// {@template pulumi_compute_v1_subnetwork_compute_v1_args_doc}
/// The set of arguments for Subnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_subnetwork_compute_v1_args_doc}
class SubnetworkComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  final pulumi.Input<String>? description;
  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<bool>? enableFlowLogs;
  /// The external IPv6 address range that is owned by this subnetwork.
  final pulumi.Input<String>? externalIpv6Prefix;
  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  final pulumi.Input<String>? ipCidrRange;
  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  final pulumi.Input<SubnetworkIpv6AccessTypeComputeV1>? ipv6AccessType;
  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  final pulumi.Input<SubnetworkLogConfigComputeV1>? logConfig;
  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  final pulumi.Input<String>? network;
  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  final pulumi.Input<bool>? privateIpGoogleAccess;
  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  final pulumi.Input<SubnetworkPrivateIpv6GoogleAccessComputeV1>? privateIpv6GoogleAccess;
  final pulumi.Input<String>? project;
  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<SubnetworkPurposeComputeV1>? purpose;
  /// URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  final pulumi.Input<SubnetworkRoleComputeV1>? role;
  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  final pulumi.Input<List<SubnetworkSecondaryRangeComputeV1>>? secondaryIpRanges;
  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  final pulumi.Input<SubnetworkStackTypeComputeV1>? stackType;

  /// Creates a new [SubnetworkComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  /// [enableFlowLogs] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [externalIpv6Prefix] The external IPv6 address range that is owned by this subnetwork.
  /// [ipCidrRange] The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  /// [logConfig] This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  /// [privateIpGoogleAccess] Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  /// [privateIpv6GoogleAccess] This field is for internal use. This field can be both set at resource creation time and updated using patch.
  /// [project] Optional.
  /// [purpose] The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [region] URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [role] The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  /// [stackType] The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  SubnetworkComputeV1Args({
    String? description,
    bool? enableFlowLogs,
    String? externalIpv6Prefix,
    String? ipCidrRange,
    SubnetworkIpv6AccessTypeComputeV1? ipv6AccessType,
    SubnetworkLogConfigComputeV1? logConfig,
    String? name,
    String? network,
    bool? privateIpGoogleAccess,
    SubnetworkPrivateIpv6GoogleAccessComputeV1? privateIpv6GoogleAccess,
    String? project,
    SubnetworkPurposeComputeV1? purpose,
    required String region,
    String? requestId,
    SubnetworkRoleComputeV1? role,
    List<SubnetworkSecondaryRangeComputeV1>? secondaryIpRanges,
    SubnetworkStackTypeComputeV1? stackType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      enableFlowLogs = pulumi.Input.asOptionalInput<bool>(enableFlowLogs),
      externalIpv6Prefix = pulumi.Input.asOptionalInput<String>(externalIpv6Prefix),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      ipv6AccessType = pulumi.Input.asOptionalInput<SubnetworkIpv6AccessTypeComputeV1>(ipv6AccessType),
      logConfig = pulumi.Input.asOptionalInput<SubnetworkLogConfigComputeV1>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      privateIpGoogleAccess = pulumi.Input.asOptionalInput<bool>(privateIpGoogleAccess),
      privateIpv6GoogleAccess = pulumi.Input.asOptionalInput<SubnetworkPrivateIpv6GoogleAccessComputeV1>(privateIpv6GoogleAccess),
      project = pulumi.Input.asOptionalInput<String>(project),
      purpose = pulumi.Input.asOptionalInput<SubnetworkPurposeComputeV1>(purpose),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      role = pulumi.Input.asOptionalInput<SubnetworkRoleComputeV1>(role),
      secondaryIpRanges = pulumi.Input.asOptionalInput<List<SubnetworkSecondaryRangeComputeV1>>(secondaryIpRanges),
      stackType = pulumi.Input.asOptionalInput<SubnetworkStackTypeComputeV1>(stackType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enableFlowLogs': ?enableFlowLogs,
      'externalIpv6Prefix': ?externalIpv6Prefix,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType': ?pulumi.Input.mapOptionalInputValue<SubnetworkIpv6AccessTypeComputeV1, String>(ipv6AccessType, (value) => value.value),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<SubnetworkLogConfigComputeV1, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'privateIpGoogleAccess': ?privateIpGoogleAccess,
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<SubnetworkPrivateIpv6GoogleAccessComputeV1, String>(privateIpv6GoogleAccess, (value) => value.value),
      'project': ?project,
      'purpose': ?pulumi.Input.mapOptionalInputValue<SubnetworkPurposeComputeV1, String>(purpose, (value) => value.value),
      'region': region,
      'requestId': ?requestId,
      'role': ?pulumi.Input.mapOptionalInputValue<SubnetworkRoleComputeV1, String>(role, (value) => value.value),
      'secondaryIpRanges': ?pulumi.Input.mapOptionalInputValue<List<SubnetworkSecondaryRangeComputeV1>, List<Map<String, dynamic>>>(secondaryIpRanges, (value) => pulumi.Input.encodeList<SubnetworkSecondaryRangeComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackType': ?pulumi.Input.mapOptionalInputValue<SubnetworkStackTypeComputeV1, String>(stackType, (value) => value.value),
    };
  }

  factory SubnetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return SubnetworkComputeV1Args(
      description: map['description'] == null ? null : map['description'] as String,
      enableFlowLogs: map['enableFlowLogs'] == null ? null : map['enableFlowLogs'] as bool,
      externalIpv6Prefix: map['externalIpv6Prefix'] == null ? null : map['externalIpv6Prefix'] as String,
      ipCidrRange: map['ipCidrRange'] == null ? null : map['ipCidrRange'] as String,
      ipv6AccessType: map['ipv6AccessType'] == null ? null : SubnetworkIpv6AccessTypeComputeV1.fromValue(map['ipv6AccessType'] as String),
      logConfig: map['logConfig'] == null ? null : SubnetworkLogConfigComputeV1.fromMap((map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      privateIpGoogleAccess: map['privateIpGoogleAccess'] == null ? null : map['privateIpGoogleAccess'] as bool,
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : SubnetworkPrivateIpv6GoogleAccessComputeV1.fromValue(map['privateIpv6GoogleAccess'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      purpose: map['purpose'] == null ? null : SubnetworkPurposeComputeV1.fromValue(map['purpose'] as String),
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      role: map['role'] == null ? null : SubnetworkRoleComputeV1.fromValue(map['role'] as String),
      secondaryIpRanges: map['secondaryIpRanges'] == null ? null : pulumi.Input.decodeList<SubnetworkSecondaryRangeComputeV1>(map['secondaryIpRanges'], (value) => SubnetworkSecondaryRangeComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      stackType: map['stackType'] == null ? null : SubnetworkStackTypeComputeV1.fromValue(map['stackType'] as String),
    );
  }
}

