// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Web Application Firewall policy for each host (if applicable)
class FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink {
  /// Resource ID.
  final String? id;

  /// Creates a new [FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink].
  /// [id] Resource ID.
  FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

