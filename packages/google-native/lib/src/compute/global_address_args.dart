// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_address_address_type.dart';
import 'global_address_ip_version.dart';
import 'global_address_ipv6_endpoint_type.dart';
import 'global_address_network_tier.dart';
import 'global_address_purpose.dart';

/// {@template pulumi_compute_alpha_global_address_args_doc}
/// The set of arguments for GlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_global_address_args_doc}
class GlobalAddressArgs {
  /// The static IP address represented by this resource.
  final pulumi.Input<String>? address;
  /// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  final pulumi.Input<GlobalAddressAddressType>? addressType;
  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  final pulumi.Input<GlobalAddressIpVersion>? ipVersion;
  /// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  final pulumi.Input<GlobalAddressIpv6EndpointType>? ipv6EndpointType;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;
  /// The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  final pulumi.Input<String>? network;
  /// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  final pulumi.Input<GlobalAddressNetworkTier>? networkTier;
  /// The prefix length if the resource represents an IP range.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;
  /// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  final pulumi.Input<GlobalAddressPurpose>? purpose;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [GlobalAddressArgs].
  /// [address] The static IP address represented by this resource.
  /// [addressType] The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [ipVersion] The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  /// [ipv6EndpointType] The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [network] The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  /// [networkTier] This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  /// [prefixLength] The prefix length if the resource represents an IP range.
  /// [project] Optional.
  /// [purpose] The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [subnetwork] The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  GlobalAddressArgs({
    String? address,
    GlobalAddressAddressType? addressType,
    String? description,
    GlobalAddressIpVersion? ipVersion,
    GlobalAddressIpv6EndpointType? ipv6EndpointType,
    Map<String, String>? labels,
    String? name,
    String? network,
    GlobalAddressNetworkTier? networkTier,
    int? prefixLength,
    String? project,
    GlobalAddressPurpose? purpose,
    String? requestId,
    String? subnetwork,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      addressType = pulumi.Input.asOptionalInput<GlobalAddressAddressType>(addressType),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<GlobalAddressIpVersion>(ipVersion),
      ipv6EndpointType = pulumi.Input.asOptionalInput<GlobalAddressIpv6EndpointType>(ipv6EndpointType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkTier = pulumi.Input.asOptionalInput<GlobalAddressNetworkTier>(networkTier),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      project = pulumi.Input.asOptionalInput<String>(project),
      purpose = pulumi.Input.asOptionalInput<GlobalAddressPurpose>(purpose),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?pulumi.Input.mapOptionalInputValue<GlobalAddressAddressType, String>(addressType, (value) => value.value),
      'description': ?description,
      'ipVersion': ?pulumi.Input.mapOptionalInputValue<GlobalAddressIpVersion, String>(ipVersion, (value) => value.value),
      'ipv6EndpointType': ?pulumi.Input.mapOptionalInputValue<GlobalAddressIpv6EndpointType, String>(ipv6EndpointType, (value) => value.value),
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'networkTier': ?pulumi.Input.mapOptionalInputValue<GlobalAddressNetworkTier, String>(networkTier, (value) => value.value),
      'prefixLength': ?prefixLength,
      'project': ?project,
      'purpose': ?pulumi.Input.mapOptionalInputValue<GlobalAddressPurpose, String>(purpose, (value) => value.value),
      'requestId': ?requestId,
      'subnetwork': ?subnetwork,
    };
  }

  factory GlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GlobalAddressArgs(
      address: map['address'] == null ? null : map['address'] as String,
      addressType: map['addressType'] == null ? null : GlobalAddressAddressType.fromValue(map['addressType'] as String),
      description: map['description'] == null ? null : map['description'] as String,
      ipVersion: map['ipVersion'] == null ? null : GlobalAddressIpVersion.fromValue(map['ipVersion'] as String),
      ipv6EndpointType: map['ipv6EndpointType'] == null ? null : GlobalAddressIpv6EndpointType.fromValue(map['ipv6EndpointType'] as String),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkTier: map['networkTier'] == null ? null : GlobalAddressNetworkTier.fromValue(map['networkTier'] as String),
      prefixLength: map['prefixLength'] == null ? null : map['prefixLength'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      purpose: map['purpose'] == null ? null : GlobalAddressPurpose.fromValue(map['purpose'] as String),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

