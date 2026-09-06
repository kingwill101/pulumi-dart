// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Web Application Firewall policy for the endpoint (if applicable)
class EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  const EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
