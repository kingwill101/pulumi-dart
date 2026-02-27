// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InterconnectAttachment.
class InterconnectAttachmentArgs2 {
  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// The ID of the underlying interconnect that this attachment's traffic will traverse through.
  final Input<String> interconnect;

  /// A unique ID that identifies this interconnect attachment.
  final Input<String> interconnectAttachmentId;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final Input<String> location;

  /// IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  final Input<int>? mtu;

  /// The ID of the network to which this interconnect attachment belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// VLAN ID provided by user. Must be site-wise unique.
  final Input<int> vlanId;

  /// The name of the target Distributed Cloud Edge zone.
  final Input<String> zone;

  InterconnectAttachmentArgs2({
    this.description,
    required this.interconnect,
    required this.interconnectAttachmentId,
    this.labels,
    required this.location,
    this.mtu,
    required this.network,
    this.project,
    required this.vlanId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['interconnect'] = interconnect;
    map['interconnectAttachmentId'] = interconnectAttachmentId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vlanId'] = vlanId;
    map['zone'] = zone;
    return map;
  }

  factory InterconnectAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      interconnect: Input.asInput<String>(map['interconnect']),
      interconnectAttachmentId:
          Input.asInput<String>(map['interconnectAttachmentId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mtu: Input.asOptionalInput<int>(map['mtu']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      vlanId: Input.asInput<int>(map['vlanId']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
