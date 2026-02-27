// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Network.
class NetworkEdgenetworkArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;

  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;

  /// A unique ID that identifies this network.
  final pulumi.Input<String> networkId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  NetworkEdgenetworkArgs({
    this.description,
    this.labels,
    required this.location,
    this.mtu,
    required this.networkId,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    map['networkId'] = networkId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory NetworkEdgenetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEdgenetworkArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      mtu: pulumi.Input.asOptionalInput<int>(map['mtu']),
      networkId: pulumi.Input.asInput<String>(map['networkId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
