// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_interconnect_type_compute_v1.dart';
import 'interconnect_link_type_compute_v1.dart';
import 'interconnect_macsec_compute_v1.dart';
import 'interconnect_requested_features_item_compute_v1.dart';

/// The set of arguments for Interconnect.
class InterconnectComputeV1Args {
  /// Administrative status of the interconnect. When this is set to true, the Interconnect is functional and can carry traffic. When set to false, no packets can be carried over the interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  final pulumi.Input<bool>? adminEnabled;

  /// Customer name, to put in the Letter of Authorization as the party authorized to request a crossconnect.
  final pulumi.Input<String>? customerName;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  final pulumi.Input<InterconnectInterconnectTypeComputeV1>? interconnectType;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Type of link requested, which can take one of the following values: - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics. Note that this field indicates the speed of each of the links in the bundle, not the speed of the entire bundle.
  final pulumi.Input<InterconnectLinkTypeComputeV1>? linkType;

  /// URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  final pulumi.Input<String>? location;

  /// Configuration that enables Media Access Control security (MACsec) on the Cloud Interconnect connection between Google and your on-premises router.
  final pulumi.Input<InterconnectMacsecComputeV1>? macsec;

  /// Enable or disable MACsec on this Interconnect connection. MACsec enablement fails if the MACsec object is not specified.
  final pulumi.Input<bool>? macsecEnabled;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Email address to contact the customer NOC for operations and maintenance notifications regarding this Interconnect. If specified, this will be used for notifications in addition to all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications. This field is required for users who sign up for Cloud Interconnect using workforce identity federation.
  final pulumi.Input<String>? nocContactEmail;
  final pulumi.Input<String>? project;

  /// Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside of Google's network that the interconnect is connected to.
  final pulumi.Input<String>? remoteLocation;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. List of features requested for this Interconnect connection, which can take one of the following values: - MACSEC If specified then the connection is created on MACsec capable hardware ports. If not specified, the default value is false, which allocates non-MACsec capable ports first if available. This parameter can be provided only with Interconnect INSERT. It isn't valid for Interconnect PATCH.
  final pulumi.Input<List<InterconnectRequestedFeaturesItemComputeV1>>?
      requestedFeatures;

  /// Target number of physical links in the link bundle, as requested by the customer.
  final pulumi.Input<int>? requestedLinkCount;

  InterconnectComputeV1Args({
    this.adminEnabled,
    this.customerName,
    this.description,
    this.interconnectType,
    this.labels,
    this.linkType,
    this.location,
    this.macsec,
    this.macsecEnabled,
    this.name,
    this.nocContactEmail,
    this.project,
    this.remoteLocation,
    this.requestId,
    this.requestedFeatures,
    this.requestedLinkCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminEnabledValue = adminEnabled;
    if (adminEnabledValue != null) {
      map['adminEnabled'] = adminEnabledValue;
    }
    final customerNameValue = customerName;
    if (customerNameValue != null) {
      map['customerName'] = customerNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final interconnectTypeValue = interconnectType;
    if (interconnectTypeValue != null) {
      map['interconnectType'] = pulumi.Input.mapOptionalInputValue<
          InterconnectInterconnectTypeComputeV1,
          String>(interconnectTypeValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linkTypeValue = linkType;
    if (linkTypeValue != null) {
      map['linkType'] = pulumi.Input.mapOptionalInputValue<
          InterconnectLinkTypeComputeV1,
          String>(linkTypeValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final macsecValue = macsec;
    if (macsecValue != null) {
      map['macsec'] = pulumi.Input.mapOptionalInputValue<
          InterconnectMacsecComputeV1,
          Map<String, dynamic>>(macsecValue, (value) => value.toMap());
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteLocationValue = remoteLocation;
    if (remoteLocationValue != null) {
      map['remoteLocation'] = remoteLocationValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final requestedFeaturesValue = requestedFeatures;
    if (requestedFeaturesValue != null) {
      map['requestedFeatures'] = pulumi.Input.mapOptionalInputValue<
              List<InterconnectRequestedFeaturesItemComputeV1>, List<String>>(
          requestedFeaturesValue,
          (value) => pulumi.Input.encodeList<
              InterconnectRequestedFeaturesItemComputeV1,
              String>(value, (value) => value.value));
    }
    final requestedLinkCountValue = requestedLinkCount;
    if (requestedLinkCountValue != null) {
      map['requestedLinkCount'] = requestedLinkCountValue;
    }
    return map;
  }

  factory InterconnectComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InterconnectComputeV1Args(
      adminEnabled: pulumi.Input.asOptionalInput<bool>(map['adminEnabled']),
      customerName: pulumi.Input.asOptionalInput<String>(map['customerName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      interconnectType:
          pulumi.Input.asOptionalInput<InterconnectInterconnectTypeComputeV1>(
              map['interconnectType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkType: pulumi.Input.asOptionalInput<InterconnectLinkTypeComputeV1>(
          map['linkType']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      macsec: pulumi.Input.asOptionalInput<InterconnectMacsecComputeV1>(
          map['macsec']),
      macsecEnabled: pulumi.Input.asOptionalInput<bool>(map['macsecEnabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nocContactEmail:
          pulumi.Input.asOptionalInput<String>(map['nocContactEmail']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      remoteLocation:
          pulumi.Input.asOptionalInput<String>(map['remoteLocation']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      requestedFeatures: pulumi.Input.asOptionalInput<
              List<InterconnectRequestedFeaturesItemComputeV1>>(
          map['requestedFeatures']),
      requestedLinkCount:
          pulumi.Input.asOptionalInput<int>(map['requestedLinkCount']),
    );
  }
}
