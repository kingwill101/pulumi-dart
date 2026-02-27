// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'address_address_type.dart';
import 'address_ip_version.dart';
import 'address_ipv6_endpoint_type.dart';
import 'address_network_tier.dart';
import 'address_purpose.dart';

/// The set of arguments for Address.
class AddressArgs {
  /// The static IP address represented by this resource.
  final Input<String>? address;

  /// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  final Input<AddressAddressType>? addressType;

  /// An optional description of this resource. Provide this field when you create the resource.
  final Input<String>? description;

  /// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  final Input<AddressIpVersion>? ipVersion;

  /// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  final Input<AddressIpv6EndpointType>? ipv6EndpointType;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final Input<String>? name;

  /// The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  final Input<String>? network;

  /// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  final Input<AddressNetworkTier>? networkTier;

  /// The prefix length if the resource represents an IP range.
  final Input<int>? prefixLength;
  final Input<String>? project;

  /// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  final Input<AddressPurpose>? purpose;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  final Input<String>? subnetwork;

  AddressArgs({
    this.address,
    this.addressType,
    this.description,
    this.ipVersion,
    this.ipv6EndpointType,
    this.labels,
    this.name,
    this.network,
    this.networkTier,
    this.prefixLength,
    this.project,
    this.purpose,
    required this.region,
    this.requestId,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final addressTypeValue = addressType;
    if (addressTypeValue != null) {
      map['addressType'] =
          Input.mapOptionalInputValue<AddressAddressType, String>(
              addressTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] = Input.mapOptionalInputValue<AddressIpVersion, String>(
          ipVersionValue, (value) => value.value);
    }
    final ipv6EndpointTypeValue = ipv6EndpointType;
    if (ipv6EndpointTypeValue != null) {
      map['ipv6EndpointType'] =
          Input.mapOptionalInputValue<AddressIpv6EndpointType, String>(
              ipv6EndpointTypeValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
          Input.mapOptionalInputValue<AddressNetworkTier, String>(
              networkTierValue, (value) => value.value);
    }
    final prefixLengthValue = prefixLength;
    if (prefixLengthValue != null) {
      map['prefixLength'] = prefixLengthValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = Input.mapOptionalInputValue<AddressPurpose, String>(
          purposeValue, (value) => value.value);
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory AddressArgs.fromMap(Map<String, dynamic> map) {
    return AddressArgs(
      address: Input.asOptionalInput<String>(map['address']),
      addressType:
          Input.asOptionalInput<AddressAddressType>(map['addressType']),
      description: Input.asOptionalInput<String>(map['description']),
      ipVersion: Input.asOptionalInput<AddressIpVersion>(map['ipVersion']),
      ipv6EndpointType: Input.asOptionalInput<AddressIpv6EndpointType>(
          map['ipv6EndpointType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkTier:
          Input.asOptionalInput<AddressNetworkTier>(map['networkTier']),
      prefixLength: Input.asOptionalInput<int>(map['prefixLength']),
      project: Input.asOptionalInput<String>(map['project']),
      purpose: Input.asOptionalInput<AddressPurpose>(map['purpose']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
    );
  }
}
