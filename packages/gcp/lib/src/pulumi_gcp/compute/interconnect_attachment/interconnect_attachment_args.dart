// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../interconnect_attachment_l2_forwarding/interconnect_attachment_l2_forwarding.dart';

/// The set of arguments for InterconnectAttachment.
class InterconnectAttachmentArgs {
  /// Whether the VLAN attachment is enabled or disabled.  When using
  /// PARTNER type this will Pre-Activate the interconnect attachment
  final Input<bool>? adminEnabled;

  /// Provisioned bandwidth capacity for the interconnect attachment.
  /// For attachments of type DEDICATED, the user can set the bandwidth.
  /// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
  /// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
  /// Defaults to BPS_10G
  /// Possible values are: `BPS_50M`, `BPS_100M`, `BPS_200M`, `BPS_300M`, `BPS_400M`, `BPS_500M`, `BPS_1G`, `BPS_2G`, `BPS_5G`, `BPS_10G`, `BPS_20G`, `BPS_50G`, `BPS_100G`, `BPS_400G`.
  final Input<String>? bandwidth;

  /// Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 203.0.113.1/29
  final Input<String>? candidateCloudRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 2001:db8::1/125
  final Input<String>? candidateCloudRouterIpv6Address;

  /// Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 203.0.113.2/29
  final Input<String>? candidateCustomerRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 2001:db8::2/125
  final Input<String>? candidateCustomerRouterIpv6Address;

  /// Up to 16 candidate prefixes that can be used to restrict the allocation
  /// of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
  /// All prefixes must be within link-local address space (169.254.0.0/16)
  /// and must be /29 or shorter (/28, /27, etc). Google will attempt to select
  /// an unused /29 from the supplied candidate prefix(es). The request will
  /// fail if all possible /29s are in use on Google's edge. If not supplied,
  /// Google will randomly select an unused /29 from all of link-local space.
  final Input<List<String>>? candidateSubnets;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Desired availability domain for the attachment. Only available for type
  /// PARTNER, at creation time. For improved reliability, customers should
  /// configure a pair of attachments with one per availability domain. The
  /// selected availability domain will be provided to the Partner via the
  /// pairing key so that the provisioned circuit will lie in the specified
  /// domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final Input<String>? edgeAvailabilityDomain;

  /// Indicates the user-supplied encryption option of this interconnect
  /// attachment. Can only be specified at attachment creation for PARTNER or
  /// DEDICATED attachments.
  /// * NONE - This is the default value, which means that the VLAN attachment
  /// carries unencrypted traffic. VMs are able to send traffic to, or receive
  /// traffic from, such a VLAN attachment.
  /// * IPSEC - The VLAN attachment carries only encrypted traffic that is
  /// encrypted by an IPsec device, such as an HA VPN gateway or third-party
  /// IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
  /// such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
  /// attachment must be created with this option.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `IPSEC`.
  final Input<String>? encryption;

  /// URL of the underlying Interconnect object that this attachment's
  /// traffic will traverse through. Required if type is DEDICATED, must not
  /// be set if type is PARTNER.
  final Input<String>? interconnect;

  /// URL of addresses that have been reserved for the interconnect attachment,
  /// Used only for interconnect attachment that has the encryption option as
  /// IPSEC.
  /// The addresses must be RFC 1918 IP address ranges. When creating HA VPN
  /// gateway over the interconnect attachment, if the attachment is configured
  /// to use an RFC 1918 IP address, then the VPN gateway's IP address will be
  /// allocated from the IP address range specified here.
  /// For example, if the HA VPN gateway's interface 0 is paired to this
  /// interconnect attachment, then an RFC 1918 IP address for the VPN gateway
  /// interface 0 will be allocated from the IP address specified for this
  /// interconnect attachment.
  /// If this field is not specified for interconnect attachment that has
  /// encryption option as IPSEC, later on when creating HA VPN gateway on this
  /// interconnect attachment, the HA VPN gateway's IP address will be
  /// allocated from regional external IP address pool.
  final Input<List<String>>? ipsecInternalAddresses;

  /// L2 Interconnect Attachment related configuration.
  /// Structure is documented below.
  final Input<InterconnectAttachmentL2Forwarding>? l2Forwarding;

  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// Valid values are 1440, 1460, 1500, and 8896. If not specified, the value will default to 1440.
  final Input<String>? mtu;

  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a
  /// lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  ///
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedL2Forwarding"" pulumi-lang-dotnet=""NestedL2Forwarding"" pulumi-lang-go=""nestedL2Forwarding"" pulumi-lang-python=""nested_l2_forwarding"" pulumi-lang-yaml=""nestedL2Forwarding"" pulumi-lang-java=""nestedL2Forwarding"">"nested_l2_forwarding"</span>></a>The <span pulumi-lang-nodejs="`l2Forwarding`" pulumi-lang-dotnet="`L2Forwarding`" pulumi-lang-go="`l2Forwarding`" pulumi-lang-python="`l2_forwarding`" pulumi-lang-yaml="`l2Forwarding`" pulumi-lang-java="`l2Forwarding`">`l2_forwarding`</span> block supports:
  final Input<String>? project;

  /// Region where the regional interconnect attachment resides.
  final Input<String>? region;

  /// URL of the cloud router to be used for dynamic routing. This router must be in
  /// the same region as this InterconnectAttachment. The InterconnectAttachment will
  /// automatically connect the Interconnect to the network & region within which the
  /// Cloud Router is configured.
  final Input<String>? router;

  /// The stack type for this interconnect attachment to identify whether the IPv6
  /// feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// This field can be both set at interconnect attachments creation and update
  /// interconnect attachment operations.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  final Input<String>? stackType;

  /// Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a
  /// constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure
  /// remote location fall into this category. In these cases, the default value is 30, and
  /// requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it
  /// gives Google Cloud Support more debugging visibility.
  final Input<int>? subnetLength;

  /// The type of InterconnectAttachment you wish to create. Defaults to
  /// DEDICATED.
  /// Possible values are: `DEDICATED`, `PARTNER`, `PARTNER_PROVIDER`, `L2_DEDICATED`.
  final Input<String>? type;

  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  /// using PARTNER type this will be managed upstream.
  final Input<int>? vlanTag8021q;

  InterconnectAttachmentArgs({
    this.adminEnabled,
    this.bandwidth,
    this.candidateCloudRouterIpAddress,
    this.candidateCloudRouterIpv6Address,
    this.candidateCustomerRouterIpAddress,
    this.candidateCustomerRouterIpv6Address,
    this.candidateSubnets,
    this.description,
    this.edgeAvailabilityDomain,
    this.encryption,
    this.interconnect,
    this.ipsecInternalAddresses,
    this.l2Forwarding,
    this.labels,
    this.mtu,
    this.name,
    this.project,
    this.region,
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
      map['bandwidth'] = bandwidthValue;
    }
    final candidateCloudRouterIpAddressValue = candidateCloudRouterIpAddress;
    if (candidateCloudRouterIpAddressValue != null) {
      map['candidateCloudRouterIpAddress'] = candidateCloudRouterIpAddressValue;
    }
    final candidateCloudRouterIpv6AddressValue =
        candidateCloudRouterIpv6Address;
    if (candidateCloudRouterIpv6AddressValue != null) {
      map['candidateCloudRouterIpv6Address'] =
          candidateCloudRouterIpv6AddressValue;
    }
    final candidateCustomerRouterIpAddressValue =
        candidateCustomerRouterIpAddress;
    if (candidateCustomerRouterIpAddressValue != null) {
      map['candidateCustomerRouterIpAddress'] =
          candidateCustomerRouterIpAddressValue;
    }
    final candidateCustomerRouterIpv6AddressValue =
        candidateCustomerRouterIpv6Address;
    if (candidateCustomerRouterIpv6AddressValue != null) {
      map['candidateCustomerRouterIpv6Address'] =
          candidateCustomerRouterIpv6AddressValue;
    }
    final candidateSubnetsValue = candidateSubnets;
    if (candidateSubnetsValue != null) {
      map['candidateSubnets'] = candidateSubnetsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final edgeAvailabilityDomainValue = edgeAvailabilityDomain;
    if (edgeAvailabilityDomainValue != null) {
      map['edgeAvailabilityDomain'] = edgeAvailabilityDomainValue;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = encryptionValue;
    }
    final interconnectValue = interconnect;
    if (interconnectValue != null) {
      map['interconnect'] = interconnectValue;
    }
    final ipsecInternalAddressesValue = ipsecInternalAddresses;
    if (ipsecInternalAddressesValue != null) {
      map['ipsecInternalAddresses'] = ipsecInternalAddressesValue;
    }
    final l2ForwardingValue = l2Forwarding;
    if (l2ForwardingValue != null) {
      map['l2Forwarding'] = Input.mapOptionalInputValue<
          InterconnectAttachmentL2Forwarding,
          Map<String, dynamic>>(l2ForwardingValue, (value) => value.toMap());
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routerValue = router;
    if (routerValue != null) {
      map['router'] = routerValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    final subnetLengthValue = subnetLength;
    if (subnetLengthValue != null) {
      map['subnetLength'] = subnetLengthValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final vlanTag8021qValue = vlanTag8021q;
    if (vlanTag8021qValue != null) {
      map['vlanTag8021q'] = vlanTag8021qValue;
    }
    return map;
  }

  factory InterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs(
      adminEnabled: Input.asOptionalInput<bool>(map['adminEnabled']),
      bandwidth: Input.asOptionalInput<String>(map['bandwidth']),
      candidateCloudRouterIpAddress:
          Input.asOptionalInput<String>(map['candidateCloudRouterIpAddress']),
      candidateCloudRouterIpv6Address:
          Input.asOptionalInput<String>(map['candidateCloudRouterIpv6Address']),
      candidateCustomerRouterIpAddress: Input.asOptionalInput<String>(
          map['candidateCustomerRouterIpAddress']),
      candidateCustomerRouterIpv6Address: Input.asOptionalInput<String>(
          map['candidateCustomerRouterIpv6Address']),
      candidateSubnets:
          Input.asOptionalInput<List<String>>(map['candidateSubnets']),
      description: Input.asOptionalInput<String>(map['description']),
      edgeAvailabilityDomain:
          Input.asOptionalInput<String>(map['edgeAvailabilityDomain']),
      encryption: Input.asOptionalInput<String>(map['encryption']),
      interconnect: Input.asOptionalInput<String>(map['interconnect']),
      ipsecInternalAddresses:
          Input.asOptionalInput<List<String>>(map['ipsecInternalAddresses']),
      l2Forwarding: Input.asOptionalInput<InterconnectAttachmentL2Forwarding>(
          map['l2Forwarding']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      mtu: Input.asOptionalInput<String>(map['mtu']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asOptionalInput<String>(map['router']),
      stackType: Input.asOptionalInput<String>(map['stackType']),
      subnetLength: Input.asOptionalInput<int>(map['subnetLength']),
      type: Input.asOptionalInput<String>(map['type']),
      vlanTag8021q: Input.asOptionalInput<int>(map['vlanTag8021q']),
    );
  }
}
