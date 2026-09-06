// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for each host (if applicable)
class FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkResponse {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkResponse].
  /// [id] Resource ID.
  const FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
