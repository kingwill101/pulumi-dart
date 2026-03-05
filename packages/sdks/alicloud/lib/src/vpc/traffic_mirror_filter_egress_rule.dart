// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficMirrorFilterEgressRule {
  final pulumi.Input<String> action;
  final pulumi.Input<String>? destinationCidrBlock;
  final pulumi.Input<String>? destinationPortRange;
  final pulumi.Input<int>? priority;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String>? sourceCidrBlock;
  final pulumi.Input<String>? sourcePortRange;
  final pulumi.Input<String>? trafficMirrorFilterRuleStatus;

  /// Creates a new [TrafficMirrorFilterEgressRule].
  /// [action] Required.
  /// [destinationCidrBlock] Optional.
  /// [destinationPortRange] Optional.
  /// [priority] Optional.
  /// [protocol] Required.
  /// [sourceCidrBlock] Optional.
  /// [sourcePortRange] Optional.
  /// [trafficMirrorFilterRuleStatus] Optional.
  TrafficMirrorFilterEgressRule({
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

  factory TrafficMirrorFilterEgressRule.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterEgressRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceCidrBlock: (() { final guardedValue = map['sourceCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorFilterRuleStatus: (() { final guardedValue = map['trafficMirrorFilterRuleStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

