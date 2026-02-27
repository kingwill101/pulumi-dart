// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegionNetworkFirewallPolicyAssociation.
class RegionNetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;

  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;

  /// The name for an association.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The location of this resource.
  final pulumi.Input<String>? region;

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
      attachmentTarget: pulumi.Input.asInput<String>(map['attachmentTarget']),
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
