// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkEndpointGroup.
class GetNetworkEndpointGroupArgs {
  /// The Network Endpoint Group name.
  /// Provide either this or a `self_link`.
  final pulumi.Input<String>? name;

  /// The ID of the project to list versions in.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Network Endpoint Group self_link.
  final pulumi.Input<String>? selfLink;

  /// The Network Endpoint Group availability zone.
  final pulumi.Input<String>? zone;

  GetNetworkEndpointGroupArgs({
    this.name,
    this.project,
    this.selfLink,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
