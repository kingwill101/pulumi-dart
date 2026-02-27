import 'package:pulumi/pulumi.dart';
import '../interconnect_application_aware_interconnect/interconnect_application_aware_interconnect.dart';
import '../interconnect_circuit_info/interconnect_circuit_info.dart';
import '../interconnect_expected_outage/interconnect_expected_outage.dart';
import '../interconnect_macsec/interconnect_macsec.dart';
import '../interconnect_params/interconnect_params.dart';
import 'interconnect_args.dart';

/// Represents an Interconnect resource. The Interconnect resource is a dedicated connection between
/// Google's network and your on-premises network.
///
///
/// To get more information about Interconnect, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)
/// * How-to Guides
/// * [Create a Dedicated Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/concepts/dedicated-overview)
///
/// ## Example Usage
///
/// ### Compute Interconnect Basic
///
///
///
///
/// ## Import
///
/// Interconnect can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/interconnects/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Interconnect can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnect:Interconnect default projects/{{project}}/global/interconnects/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnect:Interconnect default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnect:Interconnect default {{name}}
/// ```
class Interconnect extends CustomResource {
  /// Enable or disable the Application Aware Interconnect(AAI) feature on this interconnect.
  late final Output<bool?> aaiEnabled;

  /// Administrative status of the interconnect. When this is set to true, the Interconnect is
  /// functional and can carry traffic. When set to false, no packets can be carried over the
  /// interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  late final Output<bool?> adminEnabled;

  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  late final Output<InterconnectApplicationAwareInterconnect?>
      applicationAwareInterconnect;

  /// [Output Only] List of features that are available on this Interconnect connection based on the provisioned hardware and configuration.
  /// Possible values include:
  /// - 'IF_MACSEC': Indicates the Interconnect connection is provisioned on MACsec capable hardware ports. If this feature is not present, the connection does not support MACsec, and any attempt to enable it will fail.
  /// - 'IF_L2_FORWARDING': Indicates the Interconnect connection can be used for Layer 2 (L2) traffic forwarding. If not present, the connection cannot be used with L2 forwarding attachments.
  /// - 'IF_CROSS_SITE_NETWORK': Indicates the Interconnect connection is provisioned for Cross-Site Networking.
  /// Note: 'MACSEC' is a legacy value and has the same meaning as 'IF_MACSEC'.
  late final Output<List<String>> availableFeatures;

  /// A list of CircuitInfo objects, that describe the individual circuits in this LAG.
  /// Structure is documented below.
  late final Output<List<InterconnectCircuitInfo>> circuitInfos;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Customer name, to put in the Letter of Authorization as the party authorized to request a
  /// crossconnect. This field is required for Dedicated and Partner Interconnect, should not be specified
  /// for cross-cloud interconnect.
  late final Output<String?> customerName;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A list of outages expected for this Interconnect.
  /// Structure is documented below.
  late final Output<List<InterconnectExpectedOutage>> expectedOutages;

  /// IP address configured on the Google side of the Interconnect link.
  /// This can be used only for ping tests.
  late final Output<String> googleIpAddress;

  /// Google reference ID to be used when raising support tickets with Google or otherwise to debug
  /// backend connectivity issues.
  late final Output<String> googleReferenceId;

  /// A list of the URLs of all InterconnectAttachments configured to use this Interconnect.
  late final Output<List<String>> interconnectAttachments;

  /// URLs of InterconnectGroups that include this Interconnect.
  /// Order is arbitrary and items are unique.
  late final Output<List<String>> interconnectGroups;

  /// Type of interconnect. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  /// Can take one of the following values:
  /// - PARTNER: A partner-managed interconnection shared between customers though a partner.
  /// - DEDICATED: A dedicated physical interconnection with the customer.
  /// Possible values are: `DEDICATED`, `PARTNER`, `IT_PRIVATE`.
  late final Output<String> interconnectType;

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

  /// Type of link requested. Note that this field indicates the speed of each of the links in the
  /// bundle, not the speed of the entire bundle. Can take one of the following values:
  /// - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_400G_LR4: A 400G Ethernet with LR4 optics
  /// Possible values are: `LINK_TYPE_ETHERNET_10G_LR`, `LINK_TYPE_ETHERNET_100G_LR`, `LINK_TYPE_ETHERNET_400G_LR4`.
  late final Output<String> linkType;

  /// URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  /// Specifies the location inside Google's Networks.
  late final Output<String> location;

  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  late final Output<InterconnectMacsec?> macsec;

  /// Enable or disable MACsec on this Interconnect connection.
  /// MACsec enablement fails if the MACsec object is not specified.
  late final Output<bool?> macsecEnabled;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Email address to contact the customer NOC for operations and maintenance notifications
  /// regarding this Interconnect. If specified, this will be used for notifications in addition to
  /// all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications.
  /// This field is required for users who sign up for Cloud Interconnect using workforce identity
  /// federation.
  late final Output<String?> nocContactEmail;

  /// The current status of this Interconnect's functionality, which can take one of the following:
  /// - OS_ACTIVE: A valid Interconnect, which is turned up and is ready to use. Attachments may
  /// be provisioned on this Interconnect.
  /// - OS_UNPROVISIONED: An Interconnect that has not completed turnup. No attachments may be
  /// provisioned on this Interconnect.
  /// - OS_UNDER_MAINTENANCE: An Interconnect that is undergoing internal maintenance. No
  /// attachments may be provisioned or updated on this Interconnect.
  late final Output<String> operationalStatus;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final Output<InterconnectParams?> params;

  /// IP address configured on the customer side of the Interconnect link.
  /// The customer should configure this IP address during turnup when prompted by Google NOC.
  /// This can be used only for ping tests.
  late final Output<String> peerIpAddress;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Number of links actually provisioned in this interconnect.
  late final Output<int> provisionedLinkCount;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside
  /// of Google's network that the interconnect is connected to.
  late final Output<String?> remoteLocation;

  /// List of features to request for this Interconnect connection. This field is only applicable during Interconnect creation and cannot be modified later.
  /// Possible values include:
  /// - 'IF_MACSEC': Provisions the connection on hardware ports that support MACsec (Media Access Control Security). If not specified, the system may allocate non-MACsec capable ports if available.
  /// - 'IF_L2_FORWARDING': Provisions the connection for Layer 2 (L2) traffic forwarding. If not specified, the connection defaults to Layer 3 (L3) traffic forwarding.
  /// - 'IF_CROSS_SITE_NETWORK': Provisions the connection exclusively for Cross-Site Networking.
  /// Note: 'MACSEC' is a legacy value for compatibility reasons and has the same effect as 'IF_MACSEC'. 'IF_MACSEC' is preferred.
  /// Each value may be one of: `MACSEC`, `CROSS_SITE_NETWORK`, `IF_MACSEC`, `IF_L2_FORWARDING`.
  late final Output<List<String>?> requestedFeatures;

  /// Target number of physical links in the link bundle, as requested by the customer.
  late final Output<int> requestedLinkCount;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// (Output)
  /// State of this notification. Note that the versions of this enum prefixed with "NS_" have
  /// been deprecated in favor of the unprefixed values. Can take one of the following values:
  /// - ACTIVE: This outage notification is active. The event could be in the past, present,
  /// or future. See startTime and endTime for scheduling.
  /// - CANCELLED: The outage associated with this notification was cancelled before the
  /// outage was due to start.
  /// - COMPLETED: The outage associated with this notification is complete.
  late final Output<String> state;

  /// A list of the URLs of all CrossSiteNetwork WireGroups configured to use this Interconnect. The Interconnect cannot be deleted if this list is non-empty.
  late final Output<List<String>> wireGroups;

  Interconnect(
    String name, {
    InterconnectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnect:Interconnect',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aaiEnabled = registerOutput<bool?>('aaiEnabled');
    this.adminEnabled = registerOutput<bool?>('adminEnabled');
    this.applicationAwareInterconnect =
        registerOutput<InterconnectApplicationAwareInterconnect?>(
            'applicationAwareInterconnect');
    this.availableFeatures = registerOutput<List<String>>('availableFeatures');
    this.circuitInfos =
        registerOutput<List<InterconnectCircuitInfo>>('circuitInfos');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customerName = registerOutput<String?>('customerName');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.expectedOutages =
        registerOutput<List<InterconnectExpectedOutage>>('expectedOutages');
    this.googleIpAddress = registerOutput<String>('googleIpAddress');
    this.googleReferenceId = registerOutput<String>('googleReferenceId');
    this.interconnectAttachments =
        registerOutput<List<String>>('interconnectAttachments');
    this.interconnectGroups =
        registerOutput<List<String>>('interconnectGroups');
    this.interconnectType = registerOutput<String>('interconnectType');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linkType = registerOutput<String>('linkType');
    this.location = registerOutput<String>('location');
    this.macsec = registerOutput<InterconnectMacsec?>('macsec');
    this.macsecEnabled = registerOutput<bool?>('macsecEnabled');
    this.name = registerOutput<String>('name');
    this.nocContactEmail = registerOutput<String?>('nocContactEmail');
    this.operationalStatus = registerOutput<String>('operationalStatus');
    this.params = registerOutput<InterconnectParams?>('params');
    this.peerIpAddress = registerOutput<String>('peerIpAddress');
    this.project = registerOutput<String>('project');
    this.provisionedLinkCount = registerOutput<int>('provisionedLinkCount');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.remoteLocation = registerOutput<String?>('remoteLocation');
    this.requestedFeatures = registerOutput<List<String>?>('requestedFeatures');
    this.requestedLinkCount = registerOutput<int>('requestedLinkCount');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.wireGroups = registerOutput<List<String>>('wireGroups');
  }
}
