// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DestGroup.
class DestGroupArgs {
  /// Unordered list. List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;

  /// Unordered list. List of FQDNs that this group applies to.
  final pulumi.Input<List<String>>? fqdns;
  final pulumi.Input<String>? location;

  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  final pulumi.Input<String> tunnelDestGroupId;

  DestGroupArgs({
    this.cidrs,
    this.fqdns,
    this.location,
    this.name,
    this.project,
    required this.tunnelDestGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrsValue = cidrs;
    if (cidrsValue != null) {
      map['cidrs'] = cidrsValue;
    }
    final fqdnsValue = fqdns;
    if (fqdnsValue != null) {
      map['fqdns'] = fqdnsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tunnelDestGroupId'] = tunnelDestGroupId;
    return map;
  }

  factory DestGroupArgs.fromMap(Map<String, dynamic> map) {
    return DestGroupArgs(
      cidrs: pulumi.Input.asOptionalInput<List<String>>(map['cidrs']),
      fqdns: pulumi.Input.asOptionalInput<List<String>>(map['fqdns']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tunnelDestGroupId: pulumi.Input.asInput<String>(map['tunnelDestGroupId']),
    );
  }
}
