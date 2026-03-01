// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Web Application Firewall policy for the endpoint (if applicable)
class EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final String? id;

  /// Creates a new [EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

