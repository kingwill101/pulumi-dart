// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for each routing rule (if applicable)
class RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  const RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
