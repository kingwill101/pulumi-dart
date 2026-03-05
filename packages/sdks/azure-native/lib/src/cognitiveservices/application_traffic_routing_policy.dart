// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_routing_rule.dart';

/// Type representing an application traffic policy as a property of an agentic application.
class ApplicationTrafficRoutingPolicy {
  /// Methodology used to route traffic to the application's deployments.
  final pulumi.Input<String>? protocol;
  /// Gets or sets the collection of traffic routing rules.
  final pulumi.Input<List<TrafficRoutingRule>>? rules;

  /// Creates a new [ApplicationTrafficRoutingPolicy].
  /// [protocol] Methodology used to route traffic to the application's deployments.
  /// [rules] Gets or sets the collection of traffic routing rules.
  ApplicationTrafficRoutingPolicy({
    this.protocol,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<TrafficRoutingRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TrafficRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationTrafficRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationTrafficRoutingPolicy(
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficRoutingRule>(guardedValue, (value) => TrafficRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

