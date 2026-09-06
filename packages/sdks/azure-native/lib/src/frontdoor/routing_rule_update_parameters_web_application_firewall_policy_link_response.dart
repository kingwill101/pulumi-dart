// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for each routing rule (if applicable)
class RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkResponse {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkResponse].
  /// [id] Resource ID.
  const RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
