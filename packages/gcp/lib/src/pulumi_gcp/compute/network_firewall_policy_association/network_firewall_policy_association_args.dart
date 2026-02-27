// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkFirewallPolicyAssociation.
class NetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;

  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;

  /// The name for an association.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  NetworkFirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    required this.firewallPolicy,
    this.name,
    this.project,
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
    return map;
  }

  factory NetworkFirewallPolicyAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyAssociationArgs(
      attachmentTarget: pulumi.Input.asInput<String>(map['attachmentTarget']),
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
