// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_address_type_compute_beta.dart';
import 'address_ip_version_compute_beta.dart';
import 'address_ipv6_endpoint_type_compute_beta.dart';
import 'address_network_tier_compute_beta.dart';
import 'address_purpose_compute_beta.dart';

/// The set of arguments for Address.
class AddressComputeBetaArgs {
  /// The static IP address represented by this resource.
  final pulumi.Input<String>? address;

  /// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  final pulumi.Input<AddressAddressTypeComputeBeta>? addressType;

  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;

  /// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  final pulumi.Input<AddressIpVersionComputeBeta>? ipVersion;

  /// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  final pulumi.Input<AddressIpv6EndpointTypeComputeBeta>? ipv6EndpointType;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;

  /// The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  final pulumi.Input<String>? network;

  /// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  final pulumi.Input<AddressNetworkTierComputeBeta>? networkTier;

  /// The prefix length if the resource represents an IP range.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;

  /// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  final pulumi.Input<AddressPurposeComputeBeta>? purpose;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  final pulumi.Input<String>? subnetwork;

  AddressComputeBetaArgs({
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
      map['addressType'] = pulumi.Input.mapOptionalInputValue<
          AddressAddressTypeComputeBeta,
          String>(addressTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] = pulumi.Input.mapOptionalInputValue<
          AddressIpVersionComputeBeta,
          String>(ipVersionValue, (value) => value.value);
    }
    final ipv6EndpointTypeValue = ipv6EndpointType;
    if (ipv6EndpointTypeValue != null) {
      map['ipv6EndpointType'] = pulumi.Input.mapOptionalInputValue<
          AddressIpv6EndpointTypeComputeBeta,
          String>(ipv6EndpointTypeValue, (value) => value.value);
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
      map['networkTier'] = pulumi.Input.mapOptionalInputValue<
          AddressNetworkTierComputeBeta,
          String>(networkTierValue, (value) => value.value);
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
      map['purpose'] =
          pulumi.Input.mapOptionalInputValue<AddressPurposeComputeBeta, String>(
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

  factory AddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return AddressComputeBetaArgs(
      address: pulumi.Input.asOptionalInput<String>(map['address']),
      addressType: pulumi.Input.asOptionalInput<AddressAddressTypeComputeBeta>(
          map['addressType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ipVersion: pulumi.Input.asOptionalInput<AddressIpVersionComputeBeta>(
          map['ipVersion']),
      ipv6EndpointType:
          pulumi.Input.asOptionalInput<AddressIpv6EndpointTypeComputeBeta>(
              map['ipv6EndpointType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkTier: pulumi.Input.asOptionalInput<AddressNetworkTierComputeBeta>(
          map['networkTier']),
      prefixLength: pulumi.Input.asOptionalInput<int>(map['prefixLength']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      purpose: pulumi.Input.asOptionalInput<AddressPurposeComputeBeta>(
          map['purpose']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
    );
  }
}
