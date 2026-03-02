// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficMirrorFilterIngressRule {
  final pulumi.Input<String> action;
  final pulumi.Input<String>? destinationCidrBlock;
  final pulumi.Input<String>? destinationPortRange;
  final pulumi.Input<int>? priority;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String>? sourceCidrBlock;
  final pulumi.Input<String>? sourcePortRange;
  final pulumi.Input<String>? trafficMirrorFilterRuleStatus;

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
      action: (map['action'] as String).input(),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : (map['destinationCidrBlock']! as String).input(),
      destinationPortRange: map['destinationPortRange'] == null ? null : (map['destinationPortRange']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      protocol: (map['protocol'] as String).input(),
      sourceCidrBlock: map['sourceCidrBlock'] == null ? null : (map['sourceCidrBlock']! as String).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : (map['sourcePortRange']! as String).input(),
      trafficMirrorFilterRuleStatus: map['trafficMirrorFilterRuleStatus'] == null ? null : (map['trafficMirrorFilterRuleStatus']! as String).input(),
    );
  }
}

