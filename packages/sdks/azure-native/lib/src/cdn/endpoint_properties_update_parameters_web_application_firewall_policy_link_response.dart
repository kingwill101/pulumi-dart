// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Web Application Firewall policy for the endpoint (if applicable)
class EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse].
  /// [id] Resource ID.
  EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

