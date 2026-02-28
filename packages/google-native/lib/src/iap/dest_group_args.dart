// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_dest_group_args_doc}
/// The set of arguments for DestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_dest_group_args_doc}
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

  /// Creates a new [DestGroupArgs].
  /// [cidrs] Unordered list. List of CIDRs that this group applies to.
  /// [fqdns] Unordered list. List of FQDNs that this group applies to.
  /// [location] Optional.
  /// [name] Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  /// [project] Optional.
  /// [tunnelDestGroupId] Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  DestGroupArgs({
    List<String>? cidrs,
    List<String>? fqdns,
    String? location,
    String? name,
    String? project,
    required String tunnelDestGroupId,
  })  : cidrs = pulumi.Input.asOptionalInput<List<String>>(cidrs),
        fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        tunnelDestGroupId = pulumi.Input.asInput<String>(tunnelDestGroupId);

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
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      fqdns:
          map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tunnelDestGroupId: map['tunnelDestGroupId'] as String,
    );
  }
}
