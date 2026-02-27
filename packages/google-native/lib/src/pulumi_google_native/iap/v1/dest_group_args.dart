// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for DestGroup.
class DestGroupArgs {
  /// Unordered list. List of CIDRs that this group applies to.
  final Input<List<String>>? cidrs;

  /// Unordered list. List of FQDNs that this group applies to.
  final Input<List<String>>? fqdns;
  final Input<String>? location;

  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  final Input<String>? name;
  final Input<String>? project;

  /// Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  final Input<String> tunnelDestGroupId;

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
      cidrs: Input.asOptionalInput<List<String>>(map['cidrs']),
      fqdns: Input.asOptionalInput<List<String>>(map['fqdns']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tunnelDestGroupId: Input.asInput<String>(map['tunnelDestGroupId']),
    );
  }
}
