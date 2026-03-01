// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Web Application Firewall policy for each routing rule (if applicable)
class RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final String? id;

  /// Creates a new [RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

