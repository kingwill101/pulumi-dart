// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionNetworkFirewallPolicyAssociation.
class RegionNetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final Input<String> attachmentTarget;

  /// The firewall policy of the resource.
  final Input<String> firewallPolicy;

  /// The name for an association.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location of this resource.
  final Input<String>? region;

  RegionNetworkFirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    required this.firewallPolicy,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentTarget'] = attachmentTarget;
    map['firewallPolicy'] = firewallPolicy;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
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

  factory RegionNetworkFirewallPolicyAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyAssociationArgs(
      attachmentTarget: Input.asInput<String>(map['attachmentTarget']),
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
