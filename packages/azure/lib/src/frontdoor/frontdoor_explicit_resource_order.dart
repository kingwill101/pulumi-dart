// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorExplicitResourceOrder {
  final List<String>? backendPoolHealthProbeIds;
  final List<String>? backendPoolIds;
  final List<String>? backendPoolLoadBalancingIds;
  final List<String>? frontendEndpointIds;
  final List<String>? routingRuleIds;

  /// Creates a new [FrontdoorExplicitResourceOrder].
  /// [backendPoolHealthProbeIds] Optional.
  /// [backendPoolIds] Optional.
  /// [backendPoolLoadBalancingIds] Optional.
  /// [frontendEndpointIds] Optional.
  /// [routingRuleIds] Optional.
  FrontdoorExplicitResourceOrder({
    this.backendPoolHealthProbeIds,
    this.backendPoolIds,
    this.backendPoolLoadBalancingIds,
    this.frontendEndpointIds,
    this.routingRuleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolHealthProbeIds': ?backendPoolHealthProbeIds,
      'backendPoolIds': ?backendPoolIds,
      'backendPoolLoadBalancingIds': ?backendPoolLoadBalancingIds,
      'frontendEndpointIds': ?frontendEndpointIds,
      'routingRuleIds': ?routingRuleIds,
    };
  }

  factory FrontdoorExplicitResourceOrder.fromMap(Map<String, dynamic> map) {
    return FrontdoorExplicitResourceOrder(
      backendPoolHealthProbeIds: map['backendPoolHealthProbeIds'] == null ? null : (map['backendPoolHealthProbeIds'] as List).cast<String>(),
      backendPoolIds: map['backendPoolIds'] == null ? null : (map['backendPoolIds'] as List).cast<String>(),
      backendPoolLoadBalancingIds: map['backendPoolLoadBalancingIds'] == null ? null : (map['backendPoolLoadBalancingIds'] as List).cast<String>(),
      frontendEndpointIds: map['frontendEndpointIds'] == null ? null : (map['frontendEndpointIds'] as List).cast<String>(),
      routingRuleIds: map['routingRuleIds'] == null ? null : (map['routingRuleIds'] as List).cast<String>(),
    );
  }
}

