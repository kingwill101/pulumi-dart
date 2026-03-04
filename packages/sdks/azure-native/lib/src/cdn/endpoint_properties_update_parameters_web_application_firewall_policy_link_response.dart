// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for the endpoint (if applicable)
class EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse].
  /// [id] Resource ID.
  EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
