// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine forwarding rule.
class ForwardingRuleInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Compute Engine forwarding rule.
  final String displayName;

  /// Port range defined in the forwarding rule that matches the test.
  final String matchedPortRange;

  /// Protocol defined in the forwarding rule that matches the test.
  final String matchedProtocol;

  /// Network URI. Only valid for Internal Load Balancer.
  final String networkUri;

  /// Target type of the forwarding rule.
  final String target;

  /// URI of a Compute Engine forwarding rule.
  final String uri;

  /// VIP of the forwarding rule.
  final String vip;

  /// Creates a new [ForwardingRuleInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Compute Engine forwarding rule.
  /// [matchedPortRange] Port range defined in the forwarding rule that matches the test.
  /// [matchedProtocol] Protocol defined in the forwarding rule that matches the test.
  /// [networkUri] Network URI. Only valid for Internal Load Balancer.
  /// [target] Target type of the forwarding rule.
  /// [uri] URI of a Compute Engine forwarding rule.
  /// [vip] VIP of the forwarding rule.
  ForwardingRuleInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.matchedPortRange,
    required this.matchedProtocol,
    required this.networkUri,
    required this.target,
    required this.uri,
    required this.vip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['matchedPortRange'] = matchedPortRange;
    map['matchedProtocol'] = matchedProtocol;
    map['networkUri'] = networkUri;
    map['target'] = target;
    map['uri'] = uri;
    map['vip'] = vip;
    return map;
  }

  factory ForwardingRuleInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ForwardingRuleInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      matchedPortRange: map['matchedPortRange'] as String,
      matchedProtocol: map['matchedProtocol'] as String,
      networkUri: map['networkUri'] as String,
      target: map['target'] as String,
      uri: map['uri'] as String,
      vip: map['vip'] as String,
    );
  }
}
