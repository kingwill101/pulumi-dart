// ignore_for_file: unused_element, unnecessary_cast


class TrafficMirrorFilterIngressRule {
  final String action;
  final String? destinationCidrBlock;
  final String? destinationPortRange;
  final int? priority;
  final String protocol;
  final String? sourceCidrBlock;
  final String? sourcePortRange;
  final String? trafficMirrorFilterRuleStatus;

  /// Creates a new [TrafficMirrorFilterIngressRule].
  /// [action] Required.
  /// [destinationCidrBlock] Optional.
  /// [destinationPortRange] Optional.
  /// [priority] Optional.
  /// [protocol] Required.
  /// [sourceCidrBlock] Optional.
  /// [sourcePortRange] Optional.
  /// [trafficMirrorFilterRuleStatus] Optional.
  TrafficMirrorFilterIngressRule({
    required this.action,
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.priority,
    required this.protocol,
    this.sourceCidrBlock,
    this.sourcePortRange,
    this.trafficMirrorFilterRuleStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationPortRange': ?destinationPortRange,
      'priority': ?priority,
      'protocol': protocol,
      'sourceCidrBlock': ?sourceCidrBlock,
      'sourcePortRange': ?sourcePortRange,
      'trafficMirrorFilterRuleStatus': ?trafficMirrorFilterRuleStatus,
    };
  }

  factory TrafficMirrorFilterIngressRule.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterIngressRule(
      action: map['action'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : map['destinationCidrBlock'] as String,
      destinationPortRange: map['destinationPortRange'] == null ? null : map['destinationPortRange'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      protocol: map['protocol'] as String,
      sourceCidrBlock: map['sourceCidrBlock'] == null ? null : map['sourceCidrBlock'] as String,
      sourcePortRange: map['sourcePortRange'] == null ? null : map['sourcePortRange'] as String,
      trafficMirrorFilterRuleStatus: map['trafficMirrorFilterRuleStatus'] == null ? null : map['trafficMirrorFilterRuleStatus'] as String,
    );
  }
}

