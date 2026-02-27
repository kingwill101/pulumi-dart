import 'package:pulumi/pulumi.dart';
import '../interconnect_attachment_l2_forwarding/interconnect_attachment_l2_forwarding.dart';
import '../interconnect_attachment_private_interconnect_info/interconnect_attachment_private_interconnect_info.dart';
import 'interconnect_attachment_args.dart';

/// Represents an InterconnectAttachment (VLAN attachment) resource. For more
/// information, see Creating VLAN Attachments.
///
///
/// To get more information about InterconnectAttachment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments)
/// * How-to Guides
/// * [Create a Interconnect attachment](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/dedicated/creating-vlan-attachments)
///
/// ## Example Usage
///
/// ### Interconnect Attachment Basic
///
///
///
/// ### Compute Interconnect Attachment Ipsec Encryption
///
///
///
/// ### Compute Interconnect Attachment Custom Ranges
///
///
///
///
/// ## Import
///
/// InterconnectAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/interconnectAttachments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InterconnectAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachment:InterconnectAttachment default projects/{{project}}/regions/{{region}}/interconnectAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachment:InterconnectAttachment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachment:InterconnectAttachment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachment:InterconnectAttachment default {{name}}
/// ```
class InterconnectAttachment extends CustomResource {
  /// Whether the VLAN attachment is enabled or disabled.  When using
  /// PARTNER type this will Pre-Activate the interconnect attachment
  late final Output<bool?> adminEnabled;

  /// URL of the AttachmentGroup that includes this Attachment.
  late final Output<String> attachmentGroup;

  /// Provisioned bandwidth capacity for the interconnect attachment.
  /// For attachments of type DEDICATED, the user can set the bandwidth.
  /// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
  /// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
  /// Defaults to BPS_10G
  /// Possible values are: `BPS_50M`, `BPS_100M`, `BPS_200M`, `BPS_300M`, `BPS_400M`, `BPS_500M`, `BPS_1G`, `BPS_2G`, `BPS_5G`, `BPS_10G`, `BPS_20G`, `BPS_50G`, `BPS_100G`, `BPS_400G`.
  late final Output<String> bandwidth;

  /// Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 203.0.113.1/29
  late final Output<String?> candidateCloudRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 2001:db8::1/125
  late final Output<String?> candidateCloudRouterIpv6Address;

  /// Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 203.0.113.2/29
  late final Output<String?> candidateCustomerRouterIpAddress;

  /// Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 2001:db8::2/125
  late final Output<String?> candidateCustomerRouterIpv6Address;

  /// Up to 16 candidate prefixes that can be used to restrict the allocation
  /// of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
  /// All prefixes must be within link-local address space (169.254.0.0/16)
  /// and must be /29 or shorter (/28, /27, etc). Google will attempt to select
  /// an unused /29 from the supplied candidate prefix(es). The request will
  /// fail if all possible /29s are in use on Google's edge. If not supplied,
  /// Google will randomly select an unused /29 from all of link-local space.
  late final Output<List<String>?> candidateSubnets;

  /// IPv4 address + prefix length to be configured on Cloud Router
  /// Interface for this interconnect attachment.
  late final Output<String> cloudRouterIpAddress;

  /// IPv6 address + prefix length to be configured on Cloud Router
  /// Interface for this interconnect attachment.
  late final Output<String> cloudRouterIpv6Address;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// IPv4 address + prefix length to be configured on the customer
  /// router subinterface for this interconnect attachment.
  late final Output<String> customerRouterIpAddress;

  /// IPv6 address + prefix length to be configured on the customer
  /// router subinterface for this interconnect attachment.
  late final Output<String> customerRouterIpv6Address;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Desired availability domain for the attachment. Only available for type
  /// PARTNER, at creation time. For improved reliability, customers should
  /// configure a pair of attachments with one per availability domain. The
  /// selected availability domain will be provided to the Partner via the
  /// pairing key so that the provisioned circuit will lie in the specified
  /// domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  late final Output<String> edgeAvailabilityDomain;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

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
  late final Output<String?> encryption;

  /// Google reference ID, to be used when raising support tickets with
  /// Google or otherwise to debug backend connectivity issues.
  late final Output<String> googleReferenceId;

  /// URL of the underlying Interconnect object that this attachment's
  /// traffic will traverse through. Required if type is DEDICATED, must not
  /// be set if type is PARTNER.
  late final Output<String?> interconnect;

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
  late final Output<List<String>?> ipsecInternalAddresses;

  /// L2 Interconnect Attachment related configuration.
  /// Structure is documented below.
  late final Output<InterconnectAttachmentL2Forwarding?> l2Forwarding;

  /// A fingerprint for the labels being applied to this Interconnect, which is essentially a hash
  /// of the labels set used for optimistic locking. The fingerprint is initially generated by
  /// Compute Engine and changes after every request to modify or update labels.
  /// You must always provide an up-to-date fingerprint hash in order to update or change labels,
  /// otherwise the request will fail with error 412 conditionNotMet.
  late final Output<String> labelFingerprint;

  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// Valid values are 1440, 1460, 1500, and 8896. If not specified, the value will default to 1440.
  late final Output<String> mtu;

  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a
  /// lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// [Output only for type PARTNER. Not present for DEDICATED]. The opaque
  /// identifier of an PARTNER attachment used to initiate provisioning with
  /// a selected partner. Of the form "XXXXX/region/domain"
  late final Output<String> pairingKey;

  /// [Output only for type PARTNER. Not present for DEDICATED]. Optional
  /// BGP ASN for the router that should be supplied by a layer 3 Partner if
  /// they configured BGP on behalf of the customer.
  late final Output<String> partnerAsn;

  /// Information specific to an InterconnectAttachment. This property
  /// is populated if the interconnect that this is attached to is of type DEDICATED.
  /// Structure is documented below.
  late final Output<List<InterconnectAttachmentPrivateInterconnectInfo>>
      privateInterconnectInfos;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  ///
  ///
  ///
  /// <a name="nested_l2_forwarding"></a>The `l2_forwarding` block supports:
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Region where the regional interconnect attachment resides.
  late final Output<String> region;

  /// URL of the cloud router to be used for dynamic routing. This router must be in
  /// the same region as this InterconnectAttachment. The InterconnectAttachment will
  /// automatically connect the Interconnect to the network & region within which the
  /// Cloud Router is configured.
  late final Output<String?> router;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The stack type for this interconnect attachment to identify whether the IPv6
  /// feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// This field can be both set at interconnect attachments creation and update
  /// interconnect attachment operations.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  late final Output<String> stackType;

  /// [Output Only] The current state of this attachment's functionality.
  late final Output<String> state;

  /// Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a
  /// constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure
  /// remote location fall into this category. In these cases, the default value is 30, and
  /// requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it
  /// gives Google Cloud Support more debugging visibility.
  late final Output<int?> subnetLength;

  /// The type of InterconnectAttachment you wish to create. Defaults to
  /// DEDICATED.
  /// Possible values are: `DEDICATED`, `PARTNER`, `PARTNER_PROVIDER`, `L2_DEDICATED`.
  late final Output<String> type;

  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  /// using PARTNER type this will be managed upstream.
  late final Output<int> vlanTag8021q;

  InterconnectAttachment(
    String name, {
    InterconnectAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectAttachment:InterconnectAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminEnabled = registerOutput<bool?>('adminEnabled');
    this.attachmentGroup = registerOutput<String>('attachmentGroup');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.candidateCloudRouterIpAddress =
        registerOutput<String?>('candidateCloudRouterIpAddress');
    this.candidateCloudRouterIpv6Address =
        registerOutput<String?>('candidateCloudRouterIpv6Address');
    this.candidateCustomerRouterIpAddress =
        registerOutput<String?>('candidateCustomerRouterIpAddress');
    this.candidateCustomerRouterIpv6Address =
        registerOutput<String?>('candidateCustomerRouterIpv6Address');
    this.candidateSubnets = registerOutput<List<String>?>('candidateSubnets');
    this.cloudRouterIpAddress = registerOutput<String>('cloudRouterIpAddress');
    this.cloudRouterIpv6Address =
        registerOutput<String>('cloudRouterIpv6Address');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customerRouterIpAddress =
        registerOutput<String>('customerRouterIpAddress');
    this.customerRouterIpv6Address =
        registerOutput<String>('customerRouterIpv6Address');
    this.description = registerOutput<String?>('description');
    this.edgeAvailabilityDomain =
        registerOutput<String>('edgeAvailabilityDomain');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryption = registerOutput<String?>('encryption');
    this.googleReferenceId = registerOutput<String>('googleReferenceId');
    this.interconnect = registerOutput<String?>('interconnect');
    this.ipsecInternalAddresses =
        registerOutput<List<String>?>('ipsecInternalAddresses');
    this.l2Forwarding =
        registerOutput<InterconnectAttachmentL2Forwarding?>('l2Forwarding');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.mtu = registerOutput<String>('mtu');
    this.name = registerOutput<String>('name');
    this.pairingKey = registerOutput<String>('pairingKey');
    this.partnerAsn = registerOutput<String>('partnerAsn');
    this.privateInterconnectInfos =
        registerOutput<List<InterconnectAttachmentPrivateInterconnectInfo>>(
            'privateInterconnectInfos');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String?>('router');
    this.selfLink = registerOutput<String>('selfLink');
    this.stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
    this.subnetLength = registerOutput<int?>('subnetLength');
    this.type = registerOutput<String>('type');
    this.vlanTag8021q = registerOutput<int>('vlanTag8021q');
  }
}
