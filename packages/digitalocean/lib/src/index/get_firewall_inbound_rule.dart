// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallInboundRule {
  /// The ports on which traffic will be allowed
  /// specified as a string containing a single port, a range (e.g. "8000-9000"),
  /// or "1-65535" to open all ports for a protocol. Required for when protocol is
  /// `tcp` or `udp`.
  final String? portRange;
  /// The type of traffic to be allowed.
  /// This may be one of "tcp", "udp", or "icmp".
  final String protocol;
  /// An array of strings containing the IPv4
  /// addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs from which the
  /// inbound traffic will be accepted.
  final List<String>? sourceAddresses;
  /// An array containing the IDs of
  /// the Droplets from which the inbound traffic will be accepted.
  final List<int>? sourceDropletIds;
  final List<String>? sourceKubernetesIds;
  /// An array containing the IDs
  /// of the Load Balancers from which the inbound traffic will be accepted.
  final List<String>? sourceLoadBalancerUids;
  /// A set of names of Tags corresponding to group of
  /// Droplets from which the inbound traffic will be accepted.
  final List<String>? sourceTags;

  /// Creates a new [GetFirewallInboundRule].
  /// [portRange] The ports on which traffic will be allowed
  /// [protocol] The type of traffic to be allowed.
  /// [sourceAddresses] An array of strings containing the IPv4
  /// [sourceDropletIds] An array containing the IDs of
  /// [sourceKubernetesIds] Optional.
  /// [sourceLoadBalancerUids] An array containing the IDs
  /// [sourceTags] A set of names of Tags corresponding to group of
  GetFirewallInboundRule({
    this.portRange,
    required this.protocol,
    this.sourceAddresses,
    this.sourceDropletIds,
    this.sourceKubernetesIds,
    this.sourceLoadBalancerUids,
    this.sourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portRange': ?portRange,
      'protocol': protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourceDropletIds': ?sourceDropletIds,
      'sourceKubernetesIds': ?sourceKubernetesIds,
      'sourceLoadBalancerUids': ?sourceLoadBalancerUids,
      'sourceTags': ?sourceTags,
    };
  }

  factory GetFirewallInboundRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallInboundRule(
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
      protocol: map['protocol'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceDropletIds: map['sourceDropletIds'] == null ? null : (map['sourceDropletIds'] as List).cast<int>(),
      sourceKubernetesIds: map['sourceKubernetesIds'] == null ? null : (map['sourceKubernetesIds'] as List).cast<String>(),
      sourceLoadBalancerUids: map['sourceLoadBalancerUids'] == null ? null : (map['sourceLoadBalancerUids'] as List).cast<String>(),
      sourceTags: map['sourceTags'] == null ? null : (map['sourceTags'] as List).cast<String>(),
    );
  }
}

