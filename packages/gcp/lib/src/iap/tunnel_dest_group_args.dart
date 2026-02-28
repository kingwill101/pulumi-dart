// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_tunnel_dest_group_tunnel_dest_group_args_doc}
/// The set of arguments for TunnelDestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_tunnel_dest_group_tunnel_dest_group_args_doc}
class TunnelDestGroupArgs {
  /// List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;

  /// List of FQDNs that this group applies to.
  final pulumi.Input<List<String>>? fqdns;

  /// Unique tunnel destination group name.
  final pulumi.Input<String> groupName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  final pulumi.Input<String>? region;

  /// Creates a new [TunnelDestGroupArgs].
  /// [cidrs] List of CIDRs that this group applies to.
  /// [fqdns] List of FQDNs that this group applies to.
  /// [groupName] Unique tunnel destination group name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  TunnelDestGroupArgs({
    List<String>? cidrs,
    List<String>? fqdns,
    required String groupName,
    String? project,
    String? region,
  })  : cidrs = pulumi.Input.asOptionalInput<List<String>>(cidrs),
        fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
        groupName = pulumi.Input.asInput<String>(groupName),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      fqdns:
          map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      groupName: map['groupName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
