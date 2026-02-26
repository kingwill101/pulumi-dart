// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FirewallPolicyAssociation.
class FirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final Input<String> attachmentTarget;

  /// The firewall policy of the resource.
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the <span pulumi-lang-nodejs="`createBeforeDestroy`" pulumi-lang-dotnet="`CreateBeforeDestroy`" pulumi-lang-go="`createBeforeDestroy`" pulumi-lang-python="`create_before_destroy`" pulumi-lang-yaml="`createBeforeDestroy`" pulumi-lang-java="`createBeforeDestroy`">`create_before_destroy`</span> life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  final Input<String> firewallPolicy;

  /// The name for an association.
  final Input<String>? name;

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
      attachmentTarget: Input.asInput<String>(map['attachmentTarget']),
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
