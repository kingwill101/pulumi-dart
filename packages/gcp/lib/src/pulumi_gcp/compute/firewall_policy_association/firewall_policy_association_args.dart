// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FirewallPolicyAssociation.
class FirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;

  /// The firewall policy of the resource.
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the `create_before_destroy` life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  final pulumi.Input<String> firewallPolicy;

  /// The name for an association.
  final pulumi.Input<String>? name;

  FirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    required this.firewallPolicy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentTarget'] = attachmentTarget;
    map['firewallPolicy'] = firewallPolicy;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FirewallPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationArgs(
      attachmentTarget: pulumi.Input.asInput<String>(map['attachmentTarget']),
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
