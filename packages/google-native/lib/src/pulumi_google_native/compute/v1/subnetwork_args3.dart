// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'subnetwork_ipv6_access_type3.dart';
import 'subnetwork_log_config3.dart';
import 'subnetwork_private_ipv6_google_access3.dart';
import 'subnetwork_purpose3.dart';
import 'subnetwork_role3.dart';
import 'subnetwork_secondary_range3.dart';
import 'subnetwork_stack_type3.dart';

/// The set of arguments for Subnetwork.
class SubnetworkArgs3 {
  /// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  final Input<String>? description;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. This field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final Input<bool>? enableFlowLogs;

  /// The external IPv6 address range that is owned by this subnetwork.
  final Input<String>? externalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  final Input<String>? ipCidrRange;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  final Input<SubnetworkIpv6AccessType3>? ipv6AccessType;

  /// This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  final Input<SubnetworkLogConfig3>? logConfig;

  /// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. This field can be set only at resource creation time.
  final Input<String>? network;

  /// Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  final Input<bool>? privateIpGoogleAccess;

  /// This field is for internal use. This field can be both set at resource creation time and updated using patch.
  final Input<SubnetworkPrivateIpv6GoogleAccess3>? privateIpv6GoogleAccess;
  final Input<String>? project;

  /// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final Input<SubnetworkPurpose3>? purpose;

  /// URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  final Input<SubnetworkRole3>? role;

  /// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  final Input<List<SubnetworkSecondaryRange3>>? secondaryIpRanges;

  /// The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  final Input<SubnetworkStackType3>? stackType;

  SubnetworkArgs3({
    this.description,
    this.enableFlowLogs,
    this.externalIpv6Prefix,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.logConfig,
    this.name,
    this.network,
    this.privateIpGoogleAccess,
    this.privateIpv6GoogleAccess,
    this.project,
    this.purpose,
    required this.region,
    this.requestId,
    this.role,
    this.secondaryIpRanges,
    this.stackType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableFlowLogsValue = enableFlowLogs;
    if (enableFlowLogsValue != null) {
      map['enableFlowLogs'] = enableFlowLogsValue;
    }
    final externalIpv6PrefixValue = externalIpv6Prefix;
    if (externalIpv6PrefixValue != null) {
      map['externalIpv6Prefix'] = externalIpv6PrefixValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] =
          Input.mapOptionalInputValue<SubnetworkIpv6AccessType3, String>(
              ipv6AccessTypeValue, (value) => value.value);
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<SubnetworkLogConfig3,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
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
          SubnetworkPrivateIpv6GoogleAccess3,
          String>(privateIpv6GoogleAccessValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = Input.mapOptionalInputValue<SubnetworkPurpose3, String>(
          purposeValue, (value) => value.value);
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = Input.mapOptionalInputValue<SubnetworkRole3, String>(
          roleValue, (value) => value.value);
    }
    final secondaryIpRangesValue = secondaryIpRanges;
    if (secondaryIpRangesValue != null) {
      map['secondaryIpRanges'] = Input.mapOptionalInputValue<
              List<SubnetworkSecondaryRange3>, List<Map<String, dynamic>>>(
          secondaryIpRangesValue,
          (value) =>
              Input.encodeList<SubnetworkSecondaryRange3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] =
          Input.mapOptionalInputValue<SubnetworkStackType3, String>(
              stackTypeValue, (value) => value.value);
    }
    return map;
  }

  factory SubnetworkArgs3.fromMap(Map<String, dynamic> map) {
    return SubnetworkArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      enableFlowLogs: Input.asOptionalInput<bool>(map['enableFlowLogs']),
      externalIpv6Prefix:
          Input.asOptionalInput<String>(map['externalIpv6Prefix']),
      ipCidrRange: Input.asOptionalInput<String>(map['ipCidrRange']),
      ipv6AccessType: Input.asOptionalInput<SubnetworkIpv6AccessType3>(
          map['ipv6AccessType']),
      logConfig: Input.asOptionalInput<SubnetworkLogConfig3>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      privateIpGoogleAccess:
          Input.asOptionalInput<bool>(map['privateIpGoogleAccess']),
      privateIpv6GoogleAccess:
          Input.asOptionalInput<SubnetworkPrivateIpv6GoogleAccess3>(
              map['privateIpv6GoogleAccess']),
      project: Input.asOptionalInput<String>(map['project']),
      purpose: Input.asOptionalInput<SubnetworkPurpose3>(map['purpose']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      role: Input.asOptionalInput<SubnetworkRole3>(map['role']),
      secondaryIpRanges: Input.asOptionalInput<List<SubnetworkSecondaryRange3>>(
          map['secondaryIpRanges']),
      stackType: Input.asOptionalInput<SubnetworkStackType3>(map['stackType']),
    );
  }
}
