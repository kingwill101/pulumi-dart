// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Subnet.
class SubnetArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv4Cidrs;

  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv6Cidrs;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;

  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A unique ID that identifies this subnet.
  final pulumi.Input<String> subnetId;

  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  final pulumi.Input<int>? vlanId;

  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  SubnetArgs({
    this.description,
    this.ipv4Cidrs,
    this.ipv6Cidrs,
    this.labels,
    required this.location,
    required this.network,
    this.project,
    required this.subnetId,
    this.vlanId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipv4CidrsValue = ipv4Cidrs;
    if (ipv4CidrsValue != null) {
      map['ipv4Cidrs'] = ipv4CidrsValue;
    }
    final ipv6CidrsValue = ipv6Cidrs;
    if (ipv6CidrsValue != null) {
      map['ipv6Cidrs'] = ipv6CidrsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subnetId'] = subnetId;
    final vlanIdValue = vlanId;
    if (vlanIdValue != null) {
      map['vlanId'] = vlanIdValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ipv4Cidrs: pulumi.Input.asOptionalInput<List<String>>(map['ipv4Cidrs']),
      ipv6Cidrs: pulumi.Input.asOptionalInput<List<String>>(map['ipv6Cidrs']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
      vlanId: pulumi.Input.asOptionalInput<int>(map['vlanId']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
