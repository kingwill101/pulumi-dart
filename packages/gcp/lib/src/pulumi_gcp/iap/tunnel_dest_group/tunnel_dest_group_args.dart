// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TunnelDestGroup.
class TunnelDestGroupArgs {
  /// List of CIDRs that this group applies to.
  final Input<List<String>>? cidrs;

  /// List of FQDNs that this group applies to.
  final Input<List<String>>? fqdns;

  /// Unique tunnel destination group name.
  final Input<String> groupName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  final Input<String>? region;

  TunnelDestGroupArgs({
    this.cidrs,
    this.fqdns,
    required this.groupName,
    this.project,
    this.region,
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
    map['groupName'] = groupName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory TunnelDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return TunnelDestGroupArgs(
      cidrs: Input.asOptionalInput<List<String>>(map['cidrs']),
      fqdns: Input.asOptionalInput<List<String>>(map['fqdns']),
      groupName: Input.asInput<String>(map['groupName']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
