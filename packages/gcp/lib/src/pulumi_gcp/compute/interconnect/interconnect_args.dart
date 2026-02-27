// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../interconnect_application_aware_interconnect/interconnect_application_aware_interconnect.dart';
import '../interconnect_macsec/interconnect_macsec.dart';
import '../interconnect_params/interconnect_params.dart';

/// The set of arguments for Interconnect.
class InterconnectArgs {
  /// Enable or disable the Application Aware Interconnect(AAI) feature on this interconnect.
  final Input<bool>? aaiEnabled;

  /// Administrative status of the interconnect. When this is set to true, the Interconnect is
  /// functional and can carry traffic. When set to false, no packets can be carried over the
  /// interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  final Input<bool>? adminEnabled;

  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  final Input<InterconnectApplicationAwareInterconnect>?
      applicationAwareInterconnect;

  /// Customer name, to put in the Letter of Authorization as the party authorized to request a
  /// crossconnect. This field is required for Dedicated and Partner Interconnect, should not be specified
  /// for cross-cloud interconnect.
  final Input<String>? customerName;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Type of interconnect. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  /// Can take one of the following values:
  /// - PARTNER: A partner-managed interconnection shared between customers though a partner.
  /// - DEDICATED: A dedicated physical interconnection with the customer.
  /// Possible values are: `DEDICATED`, `PARTNER`, `IT_PRIVATE`.
  final Input<String> interconnectType;

  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Type of link requested. Note that this field indicates the speed of each of the links in the
  /// bundle, not the speed of the entire bundle. Can take one of the following values:
  /// - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_400G_LR4: A 400G Ethernet with LR4 optics
  /// Possible values are: `LINK_TYPE_ETHERNET_10G_LR`, `LINK_TYPE_ETHERNET_100G_LR`, `LINK_TYPE_ETHERNET_400G_LR4`.
  final Input<String> linkType;

  /// URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  /// Specifies the location inside Google's Networks.
  final Input<String> location;

  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  final Input<InterconnectMacsec>? macsec;

  /// Enable or disable MACsec on this Interconnect connection.
  /// MACsec enablement fails if the MACsec object is not specified.
  final Input<bool>? macsecEnabled;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Email address to contact the customer NOC for operations and maintenance notifications
  /// regarding this Interconnect. If specified, this will be used for notifications in addition to
  /// all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications.
  /// This field is required for users who sign up for Cloud Interconnect using workforce identity
  /// federation.
  final Input<String>? nocContactEmail;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final Input<InterconnectParams>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside
  /// of Google's network that the interconnect is connected to.
  final Input<String>? remoteLocation;

  /// List of features to request for this Interconnect connection. This field is only applicable during Interconnect creation and cannot be modified later.
  /// Possible values include:
  /// - 'IF_MACSEC': Provisions the connection on hardware ports that support MACsec (Media Access Control Security). If not specified, the system may allocate non-MACsec capable ports if available.
  /// - 'IF_L2_FORWARDING': Provisions the connection for Layer 2 (L2) traffic forwarding. If not specified, the connection defaults to Layer 3 (L3) traffic forwarding.
  /// - 'IF_CROSS_SITE_NETWORK': Provisions the connection exclusively for Cross-Site Networking.
  /// Note: 'MACSEC' is a legacy value for compatibility reasons and has the same effect as 'IF_MACSEC'. 'IF_MACSEC' is preferred.
  /// Each value may be one of: `MACSEC`, `CROSS_SITE_NETWORK`, `IF_MACSEC`, `IF_L2_FORWARDING`.
  final Input<List<String>>? requestedFeatures;

  /// Target number of physical links in the link bundle, as requested by the customer.
  final Input<int> requestedLinkCount;

  InterconnectArgs({
    this.aaiEnabled,
    this.adminEnabled,
    this.applicationAwareInterconnect,
    this.customerName,
    this.description,
    required this.interconnectType,
    this.labels,
    required this.linkType,
    required this.location,
    this.macsec,
    this.macsecEnabled,
    this.name,
    this.nocContactEmail,
    this.params,
    this.project,
    this.remoteLocation,
    this.requestedFeatures,
    required this.requestedLinkCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aaiEnabledValue = aaiEnabled;
    if (aaiEnabledValue != null) {
      map['aaiEnabled'] = aaiEnabledValue;
    }
    final adminEnabledValue = adminEnabled;
    if (adminEnabledValue != null) {
      map['adminEnabled'] = adminEnabledValue;
    }
    final applicationAwareInterconnectValue = applicationAwareInterconnect;
    if (applicationAwareInterconnectValue != null) {
      map['applicationAwareInterconnect'] = Input.mapOptionalInputValue<
              InterconnectApplicationAwareInterconnect, Map<String, dynamic>>(
          applicationAwareInterconnectValue, (value) => value.toMap());
    }
    final customerNameValue = customerName;
    if (customerNameValue != null) {
      map['customerName'] = customerNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['interconnectType'] = interconnectType;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['linkType'] = linkType;
    map['location'] = location;
    final macsecValue = macsec;
    if (macsecValue != null) {
      map['macsec'] =
          Input.mapOptionalInputValue<InterconnectMacsec, Map<String, dynamic>>(
              macsecValue, (value) => value.toMap());
    }
    final macsecEnabledValue = macsecEnabled;
    if (macsecEnabledValue != null) {
      map['macsecEnabled'] = macsecEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nocContactEmailValue = nocContactEmail;
    if (nocContactEmailValue != null) {
      map['nocContactEmail'] = nocContactEmailValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<InterconnectParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteLocationValue = remoteLocation;
    if (remoteLocationValue != null) {
      map['remoteLocation'] = remoteLocationValue;
    }
    final requestedFeaturesValue = requestedFeatures;
    if (requestedFeaturesValue != null) {
      map['requestedFeatures'] = requestedFeaturesValue;
    }
    map['requestedLinkCount'] = requestedLinkCount;
    return map;
  }

  factory InterconnectArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectArgs(
      aaiEnabled: Input.asOptionalInput<bool>(map['aaiEnabled']),
      adminEnabled: Input.asOptionalInput<bool>(map['adminEnabled']),
      applicationAwareInterconnect:
          Input.asOptionalInput<InterconnectApplicationAwareInterconnect>(
              map['applicationAwareInterconnect']),
      customerName: Input.asOptionalInput<String>(map['customerName']),
      description: Input.asOptionalInput<String>(map['description']),
      interconnectType: Input.asInput<String>(map['interconnectType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkType: Input.asInput<String>(map['linkType']),
      location: Input.asInput<String>(map['location']),
      macsec: Input.asOptionalInput<InterconnectMacsec>(map['macsec']),
      macsecEnabled: Input.asOptionalInput<bool>(map['macsecEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      nocContactEmail: Input.asOptionalInput<String>(map['nocContactEmail']),
      params: Input.asOptionalInput<InterconnectParams>(map['params']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteLocation: Input.asOptionalInput<String>(map['remoteLocation']),
      requestedFeatures:
          Input.asOptionalInput<List<String>>(map['requestedFeatures']),
      requestedLinkCount: Input.asInput<int>(map['requestedLinkCount']),
    );
  }
}
