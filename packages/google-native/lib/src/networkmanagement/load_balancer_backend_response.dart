// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a specific load balancer backend.
class LoadBalancerBackendResponse {
  /// Name of a Compute Engine instance or network endpoint.
  final String displayName;

  /// A list of firewall rule URIs allowing probes from health check IP ranges.
  final List<String> healthCheckAllowingFirewallRules;

  /// A list of firewall rule URIs blocking probes from health check IP ranges.
  final List<String> healthCheckBlockingFirewallRules;

  /// State of the health check firewall configuration.
  final String healthCheckFirewallState;

  /// URI of a Compute Engine instance or network endpoint.
  final String uri;

  /// Creates a new [LoadBalancerBackendResponse].
  /// [displayName] Name of a Compute Engine instance or network endpoint.
  /// [healthCheckAllowingFirewallRules] A list of firewall rule URIs allowing probes from health check IP ranges.
  /// [healthCheckBlockingFirewallRules] A list of firewall rule URIs blocking probes from health check IP ranges.
  /// [healthCheckFirewallState] State of the health check firewall configuration.
  /// [uri] URI of a Compute Engine instance or network endpoint.
  LoadBalancerBackendResponse({
    required this.displayName,
    required this.healthCheckAllowingFirewallRules,
    required this.healthCheckBlockingFirewallRules,
    required this.healthCheckFirewallState,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['healthCheckAllowingFirewallRules'] = healthCheckAllowingFirewallRules;
    map['healthCheckBlockingFirewallRules'] = healthCheckBlockingFirewallRules;
    map['healthCheckFirewallState'] = healthCheckFirewallState;
    map['uri'] = uri;
    return map;
  }

  factory LoadBalancerBackendResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendResponse(
      displayName: map['displayName'] as String,
      healthCheckAllowingFirewallRules:
          (map['healthCheckAllowingFirewallRules'] as List).cast<String>(),
      healthCheckBlockingFirewallRules:
          (map['healthCheckBlockingFirewallRules'] as List).cast<String>(),
      healthCheckFirewallState: map['healthCheckFirewallState'] as String,
      uri: map['uri'] as String,
    );
  }
}
