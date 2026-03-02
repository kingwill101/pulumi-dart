// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for each host (if applicable)
class FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

