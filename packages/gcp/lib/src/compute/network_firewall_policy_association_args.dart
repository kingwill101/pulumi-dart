// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_firewall_policy_association_network_firewall_policy_association_args_doc}
/// The set of arguments for NetworkFirewallPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_association_network_firewall_policy_association_args_doc}
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

  /// Creates a new [NetworkFirewallPolicyAssociationArgs].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  NetworkFirewallPolicyAssociationArgs({
    required String attachmentTarget,
    required String firewallPolicy,
    String? name,
    String? project,
  })  : attachmentTarget = pulumi.Input.asInput<String>(attachmentTarget),
        firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      attachmentTarget: map['attachmentTarget'] as String,
      firewallPolicy: map['firewallPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
