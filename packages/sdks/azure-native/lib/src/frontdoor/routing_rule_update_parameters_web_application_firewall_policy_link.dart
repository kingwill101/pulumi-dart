// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for each routing rule (if applicable)
class RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

