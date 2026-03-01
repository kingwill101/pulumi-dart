// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding.dart';

/// {@template pulumi_compute_interconnect_attachment_interconnect_attachment_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_interconnect_attachment_interconnect_attachment_args_doc}
class InterconnectAttachmentArgs {
  /// Whether the VLAN attachment is enabled or disabled.  When using
  /// PARTNER type this will Pre-Activate the interconnect attachment
  final pulumi.Input<bool>? adminEnabled;

  /// Provisioned bandwidth capacity for the interconnect attachment.
  /// For attachments of type DEDICATED, the user can set the bandwidth.
  /// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
  /// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
  /// Defaults to BPS_10G
  /// Possible values are: `BPS_50M`, `BPS_100M`, `BPS_200M`, `BPS_300M`, `BPS_400M`, `BPS_500M`, `BPS_1G`, `BPS_2G`, `BPS_5G`, `BPS_10G`, `BPS_20G`, `BPS_50G`, `BPS_100G`, `BPS_400G`.
  final pulumi.Input<String>? bandwidth;

  /// Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 203.0.113.1/29
  final pulumi.Input<String>? candidateCloudRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 2001:db8::1/125
  final pulumi.Input<String>? candidateCloudRouterIpv6Address;

  /// Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 203.0.113.2/29
  final pulumi.Input<String>? candidateCustomerRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 2001:db8::2/125
  final pulumi.Input<String>? candidateCustomerRouterIpv6Address;

  /// Up to 16 candidate prefixes that can be used to restrict the allocation
  /// of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
  /// All prefixes must be within link-local address space (169.254.0.0/16)
  /// and must be /29 or shorter (/28, /27, etc). Google will attempt to select
  /// an unused /29 from the supplied candidate prefix(es). The request will
  /// fail if all possible /29s are in use on Google's edge. If not supplied,
  /// Google will randomly select an unused /29 from all of link-local space.
  final pulumi.Input<List<String>>? candidateSubnets;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Desired availability domain for the attachment. Only available for type
  /// PARTNER, at creation time. For improved reliability, customers should
  /// configure a pair of attachments with one per availability domain. The
  /// selected availability domain will be provided to the Partner via the
  /// pairing key so that the provisioned circuit will lie in the specified
  /// domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final pulumi.Input<String>? edgeAvailabilityDomain;

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
  final pulumi.Input<String>? encryption;

  /// URL of the underlying Interconnect object that this attachment's
  /// traffic will traverse through. Required if type is DEDICATED, must not
  /// be set if type is PARTNER.
  final pulumi.Input<String>? interconnect;

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
  final pulumi.Input<List<String>>? ipsecInternalAddresses;

  /// L2 Interconnect Attachment related configuration.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentL2Forwarding>? l2Forwarding;

  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// Valid values are 1440, 1460, 1500, and 8896. If not specified, the value will default to 1440.
  final pulumi.Input<String>? mtu;

  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a
  /// lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  ///
  ///
  ///
  /// <a name="nested_l2_forwarding"></a>The `l2_forwarding` block supports:
  final pulumi.Input<String>? project;

  /// Region where the regional interconnect attachment resides.
  final pulumi.Input<String>? region;

  /// URL of the cloud router to be used for dynamic routing. This router must be in
  /// the same region as this InterconnectAttachment. The InterconnectAttachment will
  /// automatically connect the Interconnect to the network & region within which the
  /// Cloud Router is configured.
  final pulumi.Input<String>? router;

  /// The stack type for this interconnect attachment to identify whether the IPv6
  /// feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// This field can be both set at interconnect attachments creation and update
  /// interconnect attachment operations.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  final pulumi.Input<String>? stackType;

  /// Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a
  /// constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure
  /// remote location fall into this category. In these cases, the default value is 30, and
  /// requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it
  /// gives Google Cloud Support more debugging visibility.
  final pulumi.Input<int>? subnetLength;

  /// The type of InterconnectAttachment you wish to create. Defaults to
  /// DEDICATED.
  /// Possible values are: `DEDICATED`, `PARTNER`, `PARTNER_PROVIDER`, `L2_DEDICATED`.
  final pulumi.Input<String>? type;

  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  /// using PARTNER type this will be managed upstream.
  final pulumi.Input<int>? vlanTag8021q;

  /// Creates a new [InterconnectAttachmentArgs].
  /// [adminEnabled] Whether the VLAN attachment is enabled or disabled.  When using
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment.
  /// [candidateCloudRouterIpAddress] Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCloudRouterIpv6Address] Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCustomerRouterIpAddress] Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// [candidateCustomerRouterIpv6Address] Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type
  /// [encryption] Indicates the user-supplied encryption option of this interconnect
  /// [interconnect] URL of the underlying Interconnect object that this attachment's
  /// [ipsecInternalAddresses] URL of addresses that have been reserved for the interconnect attachment,
  /// [l2Forwarding] L2 Interconnect Attachment related configuration.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the regional interconnect attachment resides.
  /// [router] URL of the cloud router to be used for dynamic routing. This router must be in
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// [type] The type of InterconnectAttachment you wish to create. Defaults to
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  InterconnectAttachmentArgs({
    bool? adminEnabled,
    String? bandwidth,
    String? candidateCloudRouterIpAddress,
    String? candidateCloudRouterIpv6Address,
    String? candidateCustomerRouterIpAddress,
    String? candidateCustomerRouterIpv6Address,
    List<String>? candidateSubnets,
    String? description,
    String? edgeAvailabilityDomain,
    String? encryption,
    String? interconnect,
    List<String>? ipsecInternalAddresses,
    InterconnectAttachmentL2Forwarding? l2Forwarding,
    Map<String, String>? labels,
    String? mtu,
    String? name,
    String? project,
    String? region,
    String? router,
    String? stackType,
    int? subnetLength,
    String? type,
    int? vlanTag8021q,
  }) : adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
       bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
       candidateCloudRouterIpAddress = pulumi.Input.asOptionalInput<String>(
         candidateCloudRouterIpAddress,
       ),
       candidateCloudRouterIpv6Address = pulumi.Input.asOptionalInput<String>(
         candidateCloudRouterIpv6Address,
       ),
       candidateCustomerRouterIpAddress = pulumi.Input.asOptionalInput<String>(
         candidateCustomerRouterIpAddress,
       ),
       candidateCustomerRouterIpv6Address = pulumi
           .Input.asOptionalInput<String>(candidateCustomerRouterIpv6Address),
       candidateSubnets = pulumi.Input.asOptionalInput<List<String>>(
         candidateSubnets,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       edgeAvailabilityDomain = pulumi.Input.asOptionalInput<String>(
         edgeAvailabilityDomain,
       ),
       encryption = pulumi.Input.asOptionalInput<String>(encryption),
       interconnect = pulumi.Input.asOptionalInput<String>(interconnect),
       ipsecInternalAddresses = pulumi.Input.asOptionalInput<List<String>>(
         ipsecInternalAddresses,
       ),
       l2Forwarding =
           pulumi.Input.asOptionalInput<InterconnectAttachmentL2Forwarding>(
             l2Forwarding,
           ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       mtu = pulumi.Input.asOptionalInput<String>(mtu),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       router = pulumi.Input.asOptionalInput<String>(router),
       stackType = pulumi.Input.asOptionalInput<String>(stackType),
       subnetLength = pulumi.Input.asOptionalInput<int>(subnetLength),
       type = pulumi.Input.asOptionalInput<String>(type),
       vlanTag8021q = pulumi.Input.asOptionalInput<int>(vlanTag8021q);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'bandwidth': ?bandwidth,
      'candidateCloudRouterIpAddress': ?candidateCloudRouterIpAddress,
      'candidateCloudRouterIpv6Address': ?candidateCloudRouterIpv6Address,
      'candidateCustomerRouterIpAddress': ?candidateCustomerRouterIpAddress,
      'candidateCustomerRouterIpv6Address': ?candidateCustomerRouterIpv6Address,
      'candidateSubnets': ?candidateSubnets,
      'description': ?description,
      'edgeAvailabilityDomain': ?edgeAvailabilityDomain,
      'encryption': ?encryption,
      'interconnect': ?interconnect,
      'ipsecInternalAddresses': ?ipsecInternalAddresses,
      'l2Forwarding':
          ?pulumi.Input.mapOptionalInputValue<
            InterconnectAttachmentL2Forwarding,
            Map<String, dynamic>
          >(l2Forwarding, (value) => value.toMap()),
      'labels': ?labels,
      'mtu': ?mtu,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'router': ?router,
      'stackType': ?stackType,
      'subnetLength': ?subnetLength,
      'type': ?type,
      'vlanTag8021q': ?vlanTag8021q,
    };
  }

  factory InterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs(
      adminEnabled: map['adminEnabled'] == null
          ? null
          : map['adminEnabled'] as bool,
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as String,
      candidateCloudRouterIpAddress:
          map['candidateCloudRouterIpAddress'] == null
          ? null
          : map['candidateCloudRouterIpAddress'] as String,
      candidateCloudRouterIpv6Address:
          map['candidateCloudRouterIpv6Address'] == null
          ? null
          : map['candidateCloudRouterIpv6Address'] as String,
      candidateCustomerRouterIpAddress:
          map['candidateCustomerRouterIpAddress'] == null
          ? null
          : map['candidateCustomerRouterIpAddress'] as String,
      candidateCustomerRouterIpv6Address:
          map['candidateCustomerRouterIpv6Address'] == null
          ? null
          : map['candidateCustomerRouterIpv6Address'] as String,
      candidateSubnets: map['candidateSubnets'] == null
          ? null
          : (map['candidateSubnets'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      edgeAvailabilityDomain: map['edgeAvailabilityDomain'] == null
          ? null
          : map['edgeAvailabilityDomain'] as String,
      encryption: map['encryption'] == null
          ? null
          : map['encryption'] as String,
      interconnect: map['interconnect'] == null
          ? null
          : map['interconnect'] as String,
      ipsecInternalAddresses: map['ipsecInternalAddresses'] == null
          ? null
          : (map['ipsecInternalAddresses'] as List).cast<String>(),
      l2Forwarding: map['l2Forwarding'] == null
          ? null
          : InterconnectAttachmentL2Forwarding.fromMap(
              (map['l2Forwarding'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      mtu: map['mtu'] == null ? null : map['mtu'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      router: map['router'] == null ? null : map['router'] as String,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      subnetLength: map['subnetLength'] == null
          ? null
          : map['subnetLength'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      vlanTag8021q: map['vlanTag8021q'] == null
          ? null
          : map['vlanTag8021q'] as int,
    );
  }
}
