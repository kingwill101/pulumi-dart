// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'interconnect_attachment_bandwidth3.dart';
import 'interconnect_attachment_edge_availability_domain3.dart';
import 'interconnect_attachment_encryption3.dart';
import 'interconnect_attachment_partner_metadata3.dart';
import 'interconnect_attachment_stack_type3.dart';
import 'interconnect_attachment_type3.dart';

/// The set of arguments for InterconnectAttachment.
class InterconnectAttachmentArgs3 {
  /// Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  final Input<bool>? adminEnabled;

  /// Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  final Input<InterconnectAttachmentBandwidth3>? bandwidth;

  /// This field is not available.
  final Input<List<String>>? candidateIpv6Subnets;

  /// Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  final Input<List<String>>? candidateSubnets;

  /// This field is not available.
  final Input<String>? cloudRouterIpv6InterfaceId;

  /// This field is not available.
  final Input<String>? customerRouterIpv6InterfaceId;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final Input<InterconnectAttachmentEdgeAvailabilityDomain3>?
      edgeAvailabilityDomain;

  /// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  final Input<InterconnectAttachmentEncryption3>? encryption;

  /// URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  final Input<String>? interconnect;

  /// A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  final Input<List<String>>? ipsecInternalAddresses;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  final Input<int>? mtu;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  final Input<String>? pairingKey;

  /// Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  final Input<String>? partnerAsn;

  /// Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  final Input<InterconnectAttachmentPartnerMetadata3>? partnerMetadata;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  final Input<String>? router;

  /// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  final Input<InterconnectAttachmentStackType3>? stackType;

  /// Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  final Input<int>? subnetLength;

  /// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  final Input<InterconnectAttachmentType3>? type;

  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  final Input<int>? vlanTag8021q;

  InterconnectAttachmentArgs3({
    this.adminEnabled,
    this.bandwidth,
    this.candidateIpv6Subnets,
    this.candidateSubnets,
    this.cloudRouterIpv6InterfaceId,
    this.customerRouterIpv6InterfaceId,
    this.description,
    this.edgeAvailabilityDomain,
    this.encryption,
    this.interconnect,
    this.ipsecInternalAddresses,
    this.labels,
    this.mtu,
    this.name,
    this.pairingKey,
    this.partnerAsn,
    this.partnerMetadata,
    this.project,
    required this.region,
    this.requestId,
    this.router,
    this.stackType,
    this.subnetLength,
    this.type,
    this.vlanTag8021q,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminEnabledValue = adminEnabled;
    if (adminEnabledValue != null) {
      map['adminEnabled'] = adminEnabledValue;
    }
    final bandwidthValue = bandwidth;
    if (bandwidthValue != null) {
      map['bandwidth'] =
          Input.mapOptionalInputValue<InterconnectAttachmentBandwidth3, String>(
              bandwidthValue, (value) => value.value);
    }
    final candidateIpv6SubnetsValue = candidateIpv6Subnets;
    if (candidateIpv6SubnetsValue != null) {
      map['candidateIpv6Subnets'] = candidateIpv6SubnetsValue;
    }
    final candidateSubnetsValue = candidateSubnets;
    if (candidateSubnetsValue != null) {
      map['candidateSubnets'] = candidateSubnetsValue;
    }
    final cloudRouterIpv6InterfaceIdValue = cloudRouterIpv6InterfaceId;
    if (cloudRouterIpv6InterfaceIdValue != null) {
      map['cloudRouterIpv6InterfaceId'] = cloudRouterIpv6InterfaceIdValue;
    }
    final customerRouterIpv6InterfaceIdValue = customerRouterIpv6InterfaceId;
    if (customerRouterIpv6InterfaceIdValue != null) {
      map['customerRouterIpv6InterfaceId'] = customerRouterIpv6InterfaceIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final edgeAvailabilityDomainValue = edgeAvailabilityDomain;
    if (edgeAvailabilityDomainValue != null) {
      map['edgeAvailabilityDomain'] = Input.mapOptionalInputValue<
          InterconnectAttachmentEdgeAvailabilityDomain3,
          String>(edgeAvailabilityDomainValue, (value) => value.value);
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = Input.mapOptionalInputValue<
          InterconnectAttachmentEncryption3,
          String>(encryptionValue, (value) => value.value);
    }
    final interconnectValue = interconnect;
    if (interconnectValue != null) {
      map['interconnect'] = interconnectValue;
    }
    final ipsecInternalAddressesValue = ipsecInternalAddresses;
    if (ipsecInternalAddressesValue != null) {
      map['ipsecInternalAddresses'] = ipsecInternalAddressesValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pairingKeyValue = pairingKey;
    if (pairingKeyValue != null) {
      map['pairingKey'] = pairingKeyValue;
    }
    final partnerAsnValue = partnerAsn;
    if (partnerAsnValue != null) {
      map['partnerAsn'] = partnerAsnValue;
    }
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = Input.mapOptionalInputValue<
          InterconnectAttachmentPartnerMetadata3,
          Map<String, dynamic>>(partnerMetadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final routerValue = router;
    if (routerValue != null) {
      map['router'] = routerValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] =
          Input.mapOptionalInputValue<InterconnectAttachmentStackType3, String>(
              stackTypeValue, (value) => value.value);
    }
    final subnetLengthValue = subnetLength;
    if (subnetLengthValue != null) {
      map['subnetLength'] = subnetLengthValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          Input.mapOptionalInputValue<InterconnectAttachmentType3, String>(
              typeValue, (value) => value.value);
    }
    final vlanTag8021qValue = vlanTag8021q;
    if (vlanTag8021qValue != null) {
      map['vlanTag8021q'] = vlanTag8021qValue;
    }
    return map;
  }

  factory InterconnectAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs3(
      adminEnabled: Input.asOptionalInput<bool>(map['adminEnabled']),
      bandwidth: Input.asOptionalInput<InterconnectAttachmentBandwidth3>(
          map['bandwidth']),
      candidateIpv6Subnets:
          Input.asOptionalInput<List<String>>(map['candidateIpv6Subnets']),
      candidateSubnets:
          Input.asOptionalInput<List<String>>(map['candidateSubnets']),
      cloudRouterIpv6InterfaceId:
          Input.asOptionalInput<String>(map['cloudRouterIpv6InterfaceId']),
      customerRouterIpv6InterfaceId:
          Input.asOptionalInput<String>(map['customerRouterIpv6InterfaceId']),
      description: Input.asOptionalInput<String>(map['description']),
      edgeAvailabilityDomain:
          Input.asOptionalInput<InterconnectAttachmentEdgeAvailabilityDomain3>(
              map['edgeAvailabilityDomain']),
      encryption: Input.asOptionalInput<InterconnectAttachmentEncryption3>(
          map['encryption']),
      interconnect: Input.asOptionalInput<String>(map['interconnect']),
      ipsecInternalAddresses:
          Input.asOptionalInput<List<String>>(map['ipsecInternalAddresses']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      mtu: Input.asOptionalInput<int>(map['mtu']),
      name: Input.asOptionalInput<String>(map['name']),
      pairingKey: Input.asOptionalInput<String>(map['pairingKey']),
      partnerAsn: Input.asOptionalInput<String>(map['partnerAsn']),
      partnerMetadata:
          Input.asOptionalInput<InterconnectAttachmentPartnerMetadata3>(
              map['partnerMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      router: Input.asOptionalInput<String>(map['router']),
      stackType: Input.asOptionalInput<InterconnectAttachmentStackType3>(
          map['stackType']),
      subnetLength: Input.asOptionalInput<int>(map['subnetLength']),
      type: Input.asOptionalInput<InterconnectAttachmentType3>(map['type']),
      vlanTag8021q: Input.asOptionalInput<int>(map['vlanTag8021q']),
    );
  }
}
