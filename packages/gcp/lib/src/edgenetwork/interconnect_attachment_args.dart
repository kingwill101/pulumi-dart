// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_interconnect_attachment_interconnect_attachment_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_interconnect_attachment_interconnect_attachment_args_doc}
class InterconnectAttachmentArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// The ID of the underlying interconnect that this attachment's traffic will traverse through.
  final pulumi.Input<String> interconnect;

  /// A unique ID that identifies this interconnect attachment.
  final pulumi.Input<String> interconnectAttachmentId;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;

  /// IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;

  /// The ID of the network to which this interconnect attachment belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// VLAN ID provided by user. Must be site-wise unique.
  final pulumi.Input<int> vlanId;

  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [InterconnectAttachmentArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [interconnect] The ID of the underlying interconnect that this attachment's traffic will traverse through.
  /// [interconnectAttachmentId] A unique ID that identifies this interconnect attachment.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [network] The ID of the network to which this interconnect attachment belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [vlanId] VLAN ID provided by user. Must be site-wise unique.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  InterconnectAttachmentArgs({
    String? description,
    required String interconnect,
    required String interconnectAttachmentId,
    Map<String, String>? labels,
    required String location,
    int? mtu,
    required String network,
    String? project,
    required int vlanId,
    required String zone,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        interconnect = pulumi.Input.asInput<String>(interconnect),
        interconnectAttachmentId =
            pulumi.Input.asInput<String>(interconnectAttachmentId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        mtu = pulumi.Input.asOptionalInput<int>(mtu),
        network = pulumi.Input.asInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        vlanId = pulumi.Input.asInput<int>(vlanId),
        zone = pulumi.Input.asInput<String>(zone);

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

  factory InterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      interconnect: map['interconnect'] as String,
      interconnectAttachmentId: map['interconnectAttachmentId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vlanId: map['vlanId'] as int,
      zone: map['zone'] as String,
    );
  }
}
